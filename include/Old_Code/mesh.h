#pragma once
#ifndef _MESH_H
#define _MESH_H

#include <chrono>
#include <Eigen/Core>
#include <Eigen/Dense>
#include <Eigen/Sparse>
#include <igl/per_vertex_normals.h>
#include <igl/per_face_normals.h>
#include <igl/read_triangle_mesh.h>
using namespace Eigen;


namespace core
{
	//Mesh Data structure for the Most Proximate Face Library
	struct MPF_Mesh
	{
		MPF_Mesh(const char* filename)
		{
			//Read in the mesh's vertex and face data
			igl::read_triangle_mesh(filename,V,F);

			//Read in the mesh's vertex/face normal data
			igl::per_vertex_normals(V,F,Nv);
			igl::per_face_normals(V,F,Nf);
			Nv.rowwise().normalize();
			Nf.rowwise().normalize();
		}

		MPF_Mesh(std::string filename)
		{
			//Read in the mesh's vertex and face data
			igl::read_triangle_mesh(filename,V,F);


			//Read in the mesh's vertex/face normal data
			igl::per_vertex_normals(V,F,Nv);
			igl::per_face_normals(V,F,Nf);

			Nv.rowwise().normalize();
			Nf.rowwise().normalize();
		}



		//Mesh Statistics
		std::size_t  Num_vertices() {return V.rows();}
		std::size_t Num_faces() {return F.rows();}
		std::size_t Num_vertex_normals() {return Nv.rows();}
		std::size_t Num_face_normals() {return Nf.rows();}

		MatrixXd V;        //Vertices of the mesh
		MatrixXi F;        //Faces of the mesh
		MatrixXd Nv;       //Vertex normals of the mesh
		MatrixXd Nf;       //Face normals of the mesh

	};

	struct Query_Point
	{
		Query_Point(const RowVector3d& curr,const RowVector3d& prev, bool move)
		{
			curr_pos = curr;
			prev_pos = prev;
			velocity = MatrixXd::Zero(1,3);
			motion_state = move;
		}

		Query_Point(bool move)
		{
			Query_Point(RowVector3d::Zero(3),RowVector3d::Zero(3),move);
		}

		bool toggle_motion_state()
		{
			motion_state = !motion_state;
			return motion_state;
		}

		RowVector3d curr_pos;
		RowVector3d prev_pos;
		RowVector3d velocity;
		bool motion_state;
	};
};
#endif
