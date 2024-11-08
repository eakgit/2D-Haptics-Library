#include <iostream>
#include <string>
#include <vector>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <Eigen/Dense>
#include <Eigen/Sparse>
#include <igl/opengl/glfw/Viewer.h>
#include <igl/read_triangle_mesh.h>
#include <igl/per_vertex_normals.h>
#include <igl/stb/read_image.h>
using namespace Eigen;
typedef Matrix<bool,Dynamic,Dynamic> MatrixXb; //Data Structure used for the Vertex-Face Adjacency Matrix
typedef Matrix<bool,Dynamic,1> VectorXb;       //Represents a face in the VF adjacency Matrix
typedef Matrix<bool,1,Dynamic> RowVectorXb;    //Represents a vertex in the VF adjacency Matrix

MatrixXd V,Nv,V_offset;
MatrixXi F,F_offset;
double r = 0;



// This function is called every time a keyboard button is pressed
bool key_pressed(igl::opengl::glfw::Viewer& viewer, unsigned char key, int modifier)
  {

	  if (key == '1')
		  {
			  int virtual_id = viewer.data_list[1].id;
			  r += 0.05;
			  V_offset = V+r*Nv;
			  F_offset = F;
			  viewer.data().set_mesh(V_offset, F_offset);
			  viewer.data().set_normals(Nv);
			  Eigen::Matrix<unsigned char,Eigen::Dynamic,Eigen::Dynamic> R,G,B,A;
			  igl::stb::read_image("../data/matcaps/1024/045C5C_0DBDBD_049393_04A4A4.png",R,G,B,A);
			  viewer.data(virtual_id).use_matcap =true;
			  viewer.data(virtual_id).set_texture(R,G,B,A);
			  std::cout << "Current offset radius: " << r << std::endl; 
		  }

	  if (key == '2' && r > 0)
		  {
			  int virtual_id = viewer.data_list[1].id;
			  r -= 0.05;
			  V_offset = V+r*Nv;
			  F_offset = F;
			  viewer.data().set_mesh(V_offset, F_offset);
			  viewer.data().set_normals(Nv);
			  Eigen::Matrix<unsigned char,Eigen::Dynamic,Eigen::Dynamic> R,G,B,A;
			  igl::stb::read_image("../data/matcaps/1024/045C5C_0DBDBD_049393_04A4A4.png",R,G,B,A);
			  viewer.data(virtual_id).use_matcap =true;
			  viewer.data(virtual_id).set_texture(R,G,B,A);
			  std::cout << "Current offset radius: " << r << std::endl; 
		  }
	  return false;
  }


int main(int argc, char* argv[])
{

	std::string filename = "../data/fertility.off";
	if(argc > 1)
		filename = argv[1];
	igl::read_triangle_mesh(filename,V,F);
	igl::per_vertex_normals(V,F,Nv);
	Nv.rowwise().normalize();
	MatrixXd purple(1,4);
	purple << 1.,0.,1.,0.2;
	
	Eigen::Matrix<unsigned char,Eigen::Dynamic,Eigen::Dynamic> R,G,B,A;
	igl::stb::read_image("../data/matcaps/1024/045C5C_0DBDBD_049393_04A4A4.png",R,G,B,A);
	
	V_offset = V+r*Nv;
	F_offset = F;
	// Plot the mesh
	igl::opengl::glfw::Viewer viewer;
	viewer.callback_key_pressed = &key_pressed;

	viewer.data().show_lines = false;
	viewer.data().set_mesh(V, F);
	viewer.data().set_normals(Nv);
	viewer.data().set_colors(purple);
	viewer.data().set_mesh(V_offset, F_offset);
	viewer.data().set_normals(Nv);

	int base_id = viewer.data_list[0].id;
	int virtual_id = viewer.data_list[1].id;

	viewer.data(virtual_id).use_matcap =true;
	viewer.data(virtual_id).set_texture(R,G,B,A);
	viewer.launch();
	return 0;
}




/*class Mesh
{
public:

	Mesh(std::string filename)
	{
		igl::read_triangle_mesh(filename,V,F);
		igl::per_vertex_normals(V,F,Nv);
		Nv.rowwise().normalize();
		set_vertex_face_adjacency();
	}

	
	Mesh(const char* filename)
	{
		igl::read_triangle_mesh(filename,V,F);
		igl::per_vertex_normals(V,F,Nv);
		Nv.rowwise().normalize();
		set_vertex_face_adjacency();
	}

	Mesh(const Mesh& source_mesh)
	{
		V = source_mesh.V;
		Nv = source_mesh.Nv;
		F = source_mesh.F;
		VFadj = source_mesh.VFadj;
	}

	const Mesh& operator=(const Mesh& source_mesh)
	{
		if (this != &source_mesh)
			{
				V = source_mesh.V;
				Nv = source_mesh.Nv;
				F = source_mesh.F;
				VFadj = source_mesh.VFadj;
			}

		return *this;
	}
	void set_vertex_face_adjacency()
	{	
		//If the VF matrix is empty,
		//resize it to have dimensions
		//#Vx#F (number of vertices by number of faces )
		if(VFadj.size() == 0)
			{
				VFadj.resize(Vnum(),Fnum());
				VFadj.setZero(); //Initialize all connections as non-existent

				//Parallelize the for loop for the sake of speed
				//(There are no race conditions since each connection is independent of one another)
#pragma omp parallel for
				for(std::size_t fi = 0; fi < Fnum();++fi) //For each of the faces,
					//add each of the vertices in the face
					//as a relation
					{
						for (int j = 0; j < 3;++j)
							{
								std::size_t vi = F(fi,j);
								VFadj(vi,fi) = 1;
							}
					}
			}
		return;
	}

	std::vector<std::size_t> get_faces_from_vertex(std::size_t vi)
	{
		std::vector<std::size_t> triangles; //Set of faces containing the vertex


		//For each of the faces,
		//if the vertex is in that face,
		//push that face onto the set
		for(std::size_t fi = 0; fi < Fnum();++fi)
			{
				if(VFadj(vi,fi))
					triangles.push_back(fi);
			}

		return triangles;
	}

	std::vector<std::size_t> get_vertices_from_face(std::size_t fi,bool is_triangle_mesh)
	{
		std::vector<std::size_t> vertices; //Set of vertices in a face


		//For each of the vertices,
		//if that vertex is in the face,
		//push that vertex onto the set
		for(std::size_t vi = 0; vi < Vnum();++vi)
			{
				if(VFadj(vi,fi))
					vertices.push_back(vi);
				//If the mesh is triangular and the set has three
				//members, end the search pre-emptively
				if(is_triangle_mesh && vertices.size() == 3)
					break;
			}

		return vertices;
	}
	const MatrixXd& Verts() {return V;}
	const MatrixXd& Norm_V() {return Nv;}
	const MatrixXi& Faces() {return F;}
	
	std::size_t Vnum() {return V.rows();}
	std::size_t Fnum() {return F.rows();}
	std::size_t Num_vertex_normals() {return Nv.rows();}

private:
	MatrixXd V,Nv;
	MatrixXi F;
	MatrixXb VFadj;
	};*/
