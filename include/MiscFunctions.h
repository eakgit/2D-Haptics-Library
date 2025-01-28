#ifndef MISCFUNCTIONS_H_
#define MISCFUNCTIONS_H_
#include "raylib.h"
#include "raymath.h"
#include <Eigen/Core>
#include <Eigen/Dense>
#include <cmath>
#include <vector>
#define     min(a,b)                    (((a)<(b))?(a):(b))
#define     max(a,b)                    (((a)>(b))?(a):(b))

//Helper functions for use with the HapticScene library


//Calculates the gcd of two integers
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

//Creaete a small epsilon nighborhood around a point/line give two Vector2 objects v0 and v1
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

//Get the xy coordinates of the projected point on the line
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

//Determines the distance squared and the distance between two points
float center_distance_square(Vector2 pointA,Vector2 pointB) {return std::pow(pointA.x-pointB.x,2)+std::pow(pointA.y-pointB.y,2);}
float center_distance(Vector2 pointA,Vector2 pointB) {return sqrt(center_distance_square(pointA,pointB));}

// Tests wheteher two circles have collided with each other
// //and calculates the collision point(s), if true
bool circle_collision(Vector2 centerA, Vector2 centerB,float radiusA,float radiusB,std::vector<Vector2>& result_point)
{
    double totalradius_square = std::pow(radiusA+radiusB,2);
    float dist_AB = center_distance_square(centerA,centerB);
    float eps = epsilon(centerA,centerB);
    if ( dist_AB <= totalradius_square+eps)
    {
        if ((dist_AB < std::abs(radiusA-radiusB) ) || (dist_AB == 0 && (radiusA == radiusB+eps || radiusB == radiusA+eps)))
        {
            if(!result_point.empty())
                result_point.clear();
        }
        else
          {
              Vector2 P0,P1,P2;
              float r0,r1;
            if(radiusA > radiusB)
            {
                P0 = centerA;
                P1 = centerB;
                r0 = radiusA;
                r1 = radiusB;
            }

            else
            {
                P0 = centerB;
                P1 = centerA;
                r0 = radiusB;
                r1 = radiusA;

            }
            float d = dist_AB;
            float a = (r0*r0-r1*r1+d*d)/(2*d);
            float h = sqrt(r0*r0-a*a);


            P2 = (Vector2){P0.x+(a/d)*(P1.x-P0.x),P0.y+(a/d)*(P1.y-P0.y)};
            result_point.push_back((Vector2){P2.x+(h/d)*(P1.y-P0.y),P2.y-(h/d)*(P1.x-P0.x)});
            result_point.push_back((Vector2){P2.x-(h/d)*(P1.y-P0.y),P2.y+(h/d)*(P1.x-P0.x)});
          }
        return true;
    }
    else
        return false;
}


// Tests wheteher two line segments have collided with each other
// //and calculates the collision point, if true
bool line_collision(Vector2 l1_s,Vector2 l1_e,Vector2 l2_s,Vector2 l2_e,std::vector<Vector2>& result_point)
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
            result_point.push_back((Vector2){x,y});
            return true;
        }
    }
    return false;
}


// Tests wheteher a line segment and a circle have collided with each other
// //and calculates the collision point, if true
bool circle_line_collision(Vector2 l_init,Vector2 l_end,Vector2 circ_c,float radius,std::vector<Vector2>& result_point)
{
    Vector2 sol1,sol2,l_prox = getPPoLFast(l_init,l_end,circ_c);
    if ((center_distance(l_prox,circ_c) <= radius+epsilon(circ_c,l_prox)) && (PPonLS(l_init,l_end,circ_c)))
    {
        float a =  center_distance_square(l_init,l_end);
        float b = 2*((l_end.x-l_init.x)*(l_init.x-circ_c.x)+(l_end.y-l_init.y)*(l_init.y-circ_c.y));
        float c = circ_c.x*circ_c.x+l_init.x*l_init.x+circ_c.y*circ_c.y+l_init.y*l_init.y - 2*(circ_c.x*l_init.x+circ_c.y*l_init.y)-radius*radius;

        float mu1 =(-b+sqrt(b*b-4*a*c))/(2*a);
        sol1 = Vector2Add(l_init,Vector2Scale(Vector2Subtract(l_end,l_init),mu1));
        result_point.push_back(sol1);

        float mu2 =(-b-sqrt(b*b-4*a*c))/(2*a);
        sol2 = Vector2Add(l_init,Vector2Scale(Vector2Subtract(l_end,l_init),mu2));
        result_point.push_back(sol2);

        return true;
    }

        return false;
}

//Determines whether a point is inside a convex polygon using a ray-casting algorithm
//If there are an even number of intersections of the ray starting at the point and the polygon,
//it is outside. Otherwise it is on the inside.
bool PoinP(const std::vector<Vector2>&polygon, const Vector2& point)
{
    // Number of vertices in the polygon
    int n = polygon.size();
    // Count of intersections
    int count = 0;

    // Iterate through each edge of the polygon
    for (int i = 0; i < n; i++) {
        Vector2 p1 = polygon[i];
        // Ensure the last point connects to the first point
        Vector2 p2 = polygon[(i + 1) % n];

        // Check if the point's y-coordinate is within the
        // edge's y-range and if the point is to the left of
        // the edge
        if ((point.y > min(p1.y, p2.y))
            && (point.y <= max(p1.y, p2.y))
            && (point.x <= max(p1.x, p2.x))) {
            // Calculate the x-coordinate of the
            // intersection of the edge with a horizontal
            // line through the point
            double xIntersect = (point.y - p1.y)
                * (p2.x - p1.x)
                / (p2.y - p1.y)
                + p1.x;
            // If the edge is vertical or the point's
            // x-coordinate is less than or equal to the
            // intersection x-coordinate, increment count
            if (p1.x == p2.x || point.x <= xIntersect) {
                count++;
            }
        }
    }
    // If the number of intersections is odd, the point is
    // inside the polygon
    return (count % 2 == 1);
}



#endif // MISCFUNCTIONS_H_
