#pragma once
#ifndef _MPF_MESH_H
#define _MPF_MESH_H


#include "mesh.h"
#include "dist_math.h"
#include "nanoflann.hpp"
#include <string>
#include <vector>

#define SAMPLES_DIM 3
using namespace Eigen;
using namespace nanoflann;

typedef Matrix<bool,Dynamic,Dynamic> MatrixXb; //Data Structure used for the Vertex-Face
											   //Adjacency Matrix
typedef Matrix<bool,Dynamic,1> VectorXb;       //Represents a face in the VF adjacency Matrix
typedef Matrix<bool,1,Dynamic> RowVectorXb;    //Represents a vertex in the VF adjacency Matrix

typedef KDTreeEigenMatrixAdaptor<MatrixXd,SAMPLES_DIM,metric_L2,true> kdtree_t; //Kdtree for the
																				//Knn Search

namespace core
{
	class MeshCloud

	{
	public:
		//Constructors and Destructors for the MeshCloud object
		MeshCloud(const char*);
		MeshCloud(std::string);
		~MeshCloud();

		//Data Acessing Functions
		const MPF_Mesh& Mesh_obj() {return *(ycb_mesh);}
		const MatrixXd& Verts() {return ycb_mesh->V;}
		const MatrixXi& Faces() {return ycb_mesh->F;}
		const MatrixXd& Nverts() {return ycb_mesh->Nv;}
		const MatrixXd& Nfaces() {return ycb_mesh->Nf;}
		const MatrixXb& Vert_Face_adj() {return VFadj;}


		//MeshCloud Statistics
		std::size_t Vnum() {return ycb_mesh->Num_vertices();}
		std::size_t Fnum() {return ycb_mesh->Num_faces();}
		std::size_t Nvnum() {return ycb_mesh->Num_vertex_normals();}
		std::size_t Nfnum() {return ycb_mesh->Num_face_normals();}


		void set_vertex_face_adjacency();
		//Creates the Vertex-Face Adjacency Matrix
		std::vector<std::size_t> get_faces_from_vertex(std::size_t);
		//Given a vertex index,return all the faces containing that vertex
		std::vector<std::size_t> get_vertices_from_face(std::size_t,bool);
		//Given a face index,return all the vertices composing that face.
		//bool parameter indicates the mesh is composed of triangles to optimize calulations
		

		bool MPF_Query(const RowVector3d&,double,RowVector3d&,std::size_t&,std::size_t&);
		//Determine the closest face and point on the face to a query_point within a certain radius
		
	private:
		MPF_Mesh* ycb_mesh;   //The mesh object
		kdtree_t* kdtree_mat; //The K-d tree representation of the mesh
		MatrixXb VFadj;       //Vertex-Face adjacenvy list
		const int max_leaf = 10; //Max number of points in a node
	};

}
#endif
