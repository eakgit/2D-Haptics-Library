#include <igl/read_triangle_mesh.h>
#include <igl/opengl/glfw/Viewer.h>
#include <igl/opengl/create_shader_program.h>
#include <igl/opengl/destroy_shader_program.h>
#include <Eigen/Core>

int main(int argc, char *argv[])
{
  using namespace Eigen;
  using namespace std;
  Eigen::MatrixXd V;
  Eigen::MatrixXi F;
  igl::opengl::glfw::Viewer v;
  igl::read_triangle_mesh(argv[1],V, F);
  v.data().set_mesh(V,F);
  v.data().set_face_based(false);
  v.data().show_lines = false;
  v.launch_init();

  v.data().meshgl.init();
  igl::opengl::destroy_shader_program(v.data().meshgl.shader_mesh);

  // Custom shader that adds a Fresnel effect
  {
    std::string mesh_vertex_shader_string =
R"(#version 330

// attributes
layout(location = 0) in vec3 i_position; // xyz - position
layout(location = 1) in vec3 i_normal; // xyz - normal
layout(location = 2) in vec2 i_texcoord0; // xy - texture coords

// matrices
uniform mat4 u_modelMat;
uniform mat4 u_viewMat;
uniform mat4 u_projMat;
uniform mat3 u_normalMat;

// position of light and camera
uniform vec3 u_lightPosition;
uniform vec3 u_cameraPosition;

// data for fragment shader
out vec3 o_normal;
out vec3 o_toLight;
out vec3 o_toCamera;
out vec2 o_texcoords;

///////////////////////////////////////////////////////////////////

void main(void)
{
   // position in world space
   vec4 worldPosition = u_modelMat * vec4(i_position, 1);

   // normal in world space
   o_normal = normalize(u_normalMat * i_normal);

   // direction to light
   o_toLight = normalize(u_lightPosition - worldPosition.xyz);

   // direction to camera
   o_toCamera = normalize(u_cameraPosition - worldPosition.xyz);

   // texture coordinates to fragment shader
   o_texcoords = i_texcoord0;

   // screen space coordinates of the vertex
   gl_Position = u_projMat * u_viewMat * worldPosition;
})";

    std::string mesh_fragment_shader_string =
R"(#version 330

// data from vertex shader
in vec3 o_normal;
in vec3 o_toLight;
in vec3 o_toCamera;
in vec2 o_texcoords;

// texture with diffuese color of the object
layout(location = 0) uniform sampler2D u_diffuseTexture;

// color for framebuffer
out vec4 resultingColor;

/////////////////////////////////////////////////////////

// parameters of the light and possible values
uniform vec3 u_lightAmbientIntensitys; // = vec3(0.6, 0.3, 0);
uniform vec3 u_lightDiffuseIntensitys; // = vec3(1, 0.5, 0);
uniform vec3 u_lightSpecularIntensitys; // = vec3(0, 1, 0);

// parameters of the material and possible values
uniform vec3 u_matAmbientReflectances; // = vec3(1, 1, 1);
uniform vec3 u_matDiffuseReflectances; // = vec3(1, 1, 1);
uniform vec3 u_matSpecularReflectances; // = vec3(1, 1, 1);
uniform float u_matShininess; // = 64;

/////////////////////////////////////////////////////////

// returns intensity of reflected ambient lighting
vec3 ambientLighting()
{
   return u_matAmbientReflectance * u_lightAmbientIntensity;
}

// returns intensity of diffuse reflection
vec3 diffuseLighting(in vec3 N, in vec3 L)
{
   // calculation as for Lambertian reflection
   float diffuseTerm = clamp(dot(N, L), 0, 1) ;
   return u_matDiffuseReflectance * u_lightDiffuseIntensity * diffuseTerm;
}

// returns intensity of specular reflection
vec3 specularLighting(in vec3 N, in vec3 L, in vec3 V)
{
   float specularTerm = 0;

   // calculate specular reflection only if
   // the surface is oriented to the light source
   if(dot(N, L) > 0)
   {
      // half vector
      vec3 H = normalize(L + V);
      specularTerm = pow(dot(N, H), u_matShininess);
   }
   return u_matSpecularReflectance * u_lightSpecularIntensity * specularTerm;
}

void main(void)
{
   // normalize vectors after interpolation
   vec3 L = normalize(o_toLight);
   vec3 V = normalize(o_toCamera);
   vec3 N = normalize(o_normal);

   // get Blinn-Phong reflectance components
   float Iamb = ambientLighting();
   float Idif = diffuseLighting(N, L);
   float Ispe = specularLighting(N, L, V);

   // diffuse color of the object from texture
   vec3 diffuseColor = texture(u_diffuseTexture, o_texcoords).rgb;

   // combination of all components and diffuse color of the object
   resultingColor.xyz = diffuseColor * (Iamb + Idif + Ispe);
   resultingColor.a = 1;
})";

    igl::opengl::create_shader_program(
      mesh_vertex_shader_string,
      mesh_fragment_shader_string,
      {},
      v.data().meshgl.shader_mesh);
  }

  v.launch_rendering(true);
  v.launch_shut();
}
