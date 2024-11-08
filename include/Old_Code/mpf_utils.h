#ifndef MPF_UTILS_H_
#define MPF_UTILS_H_

#include <ctime>
#include <fstream>
#include <cstring>
#include <cassert>
#include "dist_math.h"
#include "mpf_meshcloud.h"
using namespace core;
Eigen::MatrixXd Homogenous_Transform(bool rotate,bool translate,int xyz,double th,const Eigen::Vector3d& transvec)
{
//Creates a homogenous transformation matrix
//If rotate is true, a rotation matrix will be generated using theta
//If translate is true, a translation matrix will be generated using the translation distance
//xyz determines the axis of rotation/the direction of motion
Eigen::MatrixXd homogen = Eigen::MatrixXd::Identity(4,4);
assert(xyz >= 0 && xyz <= 2);
if(rotate) //Rotation flag
{
    double c = cos(th);
    double s = sin(th);
    Eigen::MatrixXd R(3,3);//Rotation Matrix
    if (xyz == 0) //X-axis rotation flag
    {
        R << 1,0, 0,
            0,c,-s,
            0,s,c;
    }
    else if (xyz == 1) //Y-axis rotation flag
    {
        R << c, 0, s,
            0, 1, 0,
            -s,0, c;
    }
    else  //Z-axis rotation flag
    {
        R << c,-s,0,
            s,c,0,
            0,0,1;
    }

    homogen.topLeftCorner(3,3) = R;
}

    if (translate)
    {
        homogen.topRightCorner(3,1) = transvec;
    }

return homogen;
}

bool initialize_files(std::fstream& pos_data,std::fstream& face_data, std::fstream& vel_data )
{
    char posstr[50] = "qp-position.csv", facestr[50] = "face-data.csv", velstr[50] ="qp-velocity.csv";
    pos_data.open(posstr, std::fstream::out| std::fstream::trunc);
    face_data.open(facestr, std::fstream::out| std::fstream::trunc);
    vel_data.open(velstr, std::fstream::out| std::fstream::trunc);
    pos_data<< "Time(ms),Current X, Current Y, Current Z, Previous X, Previous Y, Previous Z," << std::endl;
    face_data<< "Time(ms),Closest Face Index, Closest Vertex Index,Closest Point X,Closest Point Y,Closest Point Z," << std::endl;
    vel_data<< "Time (ms),X Velocity (m/s), Y Velocity (m/s), Z Velocity (m/s)," << std::endl;
    return (pos_data.is_open() && face_data.is_open() && vel_data.is_open());
}

void position_datastream(std::fstream& pos_data,const Query_Point& query_point,double time)
{
    pos_data << time << "," << query_point.curr_pos[0] << "," << query_point.curr_pos[1] << "," << query_point.curr_pos[2] << "," <<
        query_point.prev_pos[0] << "," << query_point.prev_pos[1] << "," << query_point.prev_pos[2] << ","<< std::endl;
    return;
}

void face_datastream(std::fstream& face_data,std::size_t face_prox, std::size_t vert_prox,const Eigen::RowVector3d& point_prox,double time)
{
    face_data << time << "," << face_prox << "," << vert_prox << "," <<
        point_prox[0] << "," << point_prox[1] << "," << point_prox[2] << "," << std::endl;
    return;
}

void velocity_datastream(std::fstream& vel_data,const Eigen::RowVector3d& qp_vel,double time)
{
    vel_data << time << "," << qp_vel[0] << "," << qp_vel[1] << "," << qp_vel[2] << "," << std::endl;
    return;
}

#endif // MPF_UTILS_H_
