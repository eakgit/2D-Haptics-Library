#ifndef MISCFUNCTIONS_H_
#define MISCFUNCTIONS_H_
#include "raylib.h"
#include "raymath.h"
#include <Eigen/Core>
#include <Eigen/Dense>
#include <cmath>
#define     min(a,b)                    (((a)<(b))?(a):(b))
#define     max(a,b)                    (((a)>(b))?(a):(b))

int gcd_func(int a, int b)
{
    if (b == 0)
        return a;

    else
        return gcd_func(b,a%b);
}


//Rotate a point p x radians about the point o
Vector2 rotate_point(Vector2 p,Vector2 o, float rads)
{

    Eigen::MatrixXf R
    {
        {cos(rads),-sin(rads)},
        {sin(rads), cos(rads)}
    };
    Eigen::Vector2f x(p.x-o.x,p.y-o.y),O_vec(o.x,o.y);
    Eigen::Vector2f A = R*x+O_vec;

    Vector2 result =(Vector2){A(0),A(1)};
    //Vector2 result;
    //result.x = cos(rads)*(p.x-o.x)-sin(rads)*(p.y-o.y)+o.x;
    //result.y = sin(rads)*(p.x-o.x)+cos(rads)*(p.y-o.y)+o.y;

    return result;
}


//Perpendicular Dot Product:
// Calculates the area of a parallelogram of three points
// Same as 2*triangleArea(a,b,c) (The area of the triangle formed by the three points times 2)
float pdp(Vector2 l_init,Vector2 l_end,Vector2 p_pos){return ((l_init.x-p_pos.x)*(l_end.y*p_pos.y)- (l_init.y-p_pos.y)*(l_end.x*p_pos.x));}

double epsilon(Vector2 v0,Vector2 v1)
{
    int dx = v1.x-v0.x;
    int dy = v1.y-v0.y;
    double epsilon = 0.0001*(dx*dx+dy*dy);
    return epsilon;
}

//Determines whether a point is within an epsilon neighborhood of a line
//(In floating-point terms, whether a point is on a line)
bool PonL_PDP(Vector2 l_init,Vector2 l_end,Vector2 p_pos) {return ( std::abs(pdp(l_init,l_end,p_pos)) < epsilon(l_init,l_end) );}

//Determines whether a point is within an epsilon neighborhood of a line segment
//using the vector cross product (perpendicular dot product)
bool PoLS_PDP(Vector2 l_init,Vector2 l_end,Vector2 p_pos)
{
    if(!((l_init.x <= p_pos.x <= l_end.x)||(l_end.x <= p_pos.x <= l_init.x)))
        return false;

    if(!((l_init.y <= p_pos.y <= l_end.y)||(l_end.y <= p_pos.y <= l_init.y)))
        return false;

    return PonL_PDP(l_init,l_end,p_pos);
}

//Using the dor product to determine if a projected point is on a line segment
bool PPonLS(Vector2 l_init,Vector2 l_end,Vector2 p_pos)
{
    Vector2 e1= Vector2Subtract(l_end,l_init);
    double recArea = Vector2DotProduct(e1,e1);

    Vector2 e2= Vector2Subtract(p_pos,l_init);
    double dot_prod = Vector2DotProduct(e1,e2);

    return (dot_prod >= 0 && dot_prod <= recArea);
}

//Get the xy coordinates of the point on the line
Vector2 getPPoL(Vector2 l_init,Vector2 l_end,Vector2 p_pos)
{
    Vector2 e1 =Vector2Subtract(l_end,l_init);
    Vector2 e2 =Vector2Subtract(p_pos,l_init);
    float e1_e2_dot = Vector2DotProduct(e1,e2);

    float len_e1 = Vector2Length(e1);
    float len_e2 = Vector2Length(e2);
    float cos_e2 = e1_e2_dot/(len_e1*len_e2);
    float proj_e1 = cos_e2*len_e2;

    Vector2 proj_point = (Vector2){l_init.x+(proj_e1*e1.x/len_e1),l_init.y+(proj_e1*e1.y/len_e1)};
    return proj_point;
}

//Same as above but with some simplifications that optimizae the calculation
Vector2 getPPoLFast(Vector2 l_init,Vector2 l_end,Vector2 p_pos)
{
    Vector2 e1 =Vector2Subtract(l_end,l_init);
    Vector2 e2 =Vector2Subtract(p_pos,l_init);
    float dot_12 = Vector2DotProduct(e1,e2);

    float lensquare_e1 = Vector2LengthSqr(e1);

    Vector2 proj_point = (Vector2){l_init.x+(dot_12*e1.x/lensquare_e1),l_init.y+(dot_12*e1.y/lensquare_e1)};
    return proj_point;
}

float center_distance_square(Vector2 pointA,Vector2 pointB) {return std::pow(pointA.x-pointB.x,2)+std::pow(pointA.y-pointB.y,2);}
float center_distance(Vector2 pointA,Vector2 pointB) {return sqrt(center_distance_square(pointA,pointB));}

bool circle_collision(Vector2 centerA, Vector2 centerB,float radiusA,float radiusB)
{
    double totalradius_square = std::pow(radiusA+radiusB,2);
    if (center_distance_square(centerA,centerB) <= totalradius_square-epsilon(centerA,centerB))
        return true;
    else
        return false;
}


bool line_collision(Vector2 l1_s,Vector2 l1_e,Vector2 l2_s,Vector2 l2_e,Vector2&  result_point)
{
    float a1 = l1_e.y - l1_s.y;
    float b1 = l1_e.x - l1_s.x;
    float a2 = l2_e.y - l2_s.y;
    float b2 = l2_e.x - l2_s.x;


    float c1 =a1*l1_s.x+b1*l1_s.y;
    float c2 =a2*l2_s.x+b2*l2_s.y;

    float det = a1*b2-a2*b1;

    if(det !=0)
    {
        float x = (b2*c1-b1*c2)/det;
        float y = (a2*c1-a1*c2)/det;
        if (x >= min(l1_s.x,l1_e.x) && x <= max(l1_s.x,l1_e.x)
            &&  x >= min(l2_s.x,l2_e.x) && x <= max(l2_s.x,l2_e.x)
            && y >= min(l1_s.y,l1_e.y) && y <= max(l1_s.y,l1_e.y)
            &&  y >= min(l2_s.y,l2_e.y) && y <= max(l2_s.y,l2_e.y))
        {
            result_point = (Vector2){x,y};
            return true;
        }
    }
    return false;
}

#endif // MISCFUNCTIONS_H_
