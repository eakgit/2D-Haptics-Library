#ifndef HAPTICSCENE_H
#define HAPTICSCENE_H

#include "raylib.h"
#include <iostream>
#include <chrono>
#include <fstream>
#include <cmath>
#include <vector>

#define PHYSAC_IMPLEMENTATION
#include "physac.h"

#define SCREEN_W 1920
#define SCREEN_H 1080
#define     min(a,b)                    (((a)<(b))?(a):(b))
#define     max(a,b)                    (((a)>(b))?(a):(b))
#define     PHYSAC_FLT_MAX              3.402823466e+38f
#define     PHYSAC_EPSILON              0.000001f
#define     PHYSAC_K                    1.0f/3.0f
#define     PHYSAC_VECTOR_ZERO          (Vector2){ 0.0f, 0.0f }

int gcd(int a, int b)
{
    if (b == 0)
        return a;

    else
        return gcd(b,a%b);
}



struct RConvex
{
    RConvex(Vector2 center_,int radius_,int gcd,bool physics = false)
    {
        center = center_;

        //Make sure the radius in nonegative
        if (radius_ >= 0)
            radius_i = radius_;
        else
            radius_i = 0;


        //Convert the radius and center from integer-based pixel
        //measurements to float-based coordinate measurments
        if (gcd >= 1)
            {
                radius_f = static_cast<float>(radius_i)/gcd;
                center_f = (Vector2){center.x/gcd,center.y/gcd};
            }
        else
            {
                radius_f = static_cast<float>(radius_i);
                center_f = center;
            }
        gcd_ = gcd;
        phys = physics; //Right now, enables movement.
    }

    RConvex(int x, int y,int radius_,int gcd) {RConvex((Vector2){x,y},radius_,gcd);}

    //Moves the center of the convex to a new [x,y]
    void move(Vector2 newpos)
    {
        center = newpos;
        center_f = (Vector2){center.x/gcd_,center.y/gcd_};
    }
    Vector2 center;   // Center of the convex in screen coordinates
    Vector2 center_f; // "                     " x-y axis coordinates
    int radius_i;     // Radius of the convex in screen units
    float radius_f;   // "                     " x-y axis coordinates
    bool phys;        //Flag to allow for movement
    int gcd_;         // Number of pixels per unit
};

//TODO: Integrate the Physac Library with the HapticScene class
class HapticScene
{
public:
    HapticScene(int width_,int height_)
    {
        SetConfigFlags(FLAG_MSAA_4X_HINT);
        if (width_ > 0 && height_)
            {
                width = width_;
                height = height_;
            }
        else
            {
                width = SCREEN_W;
                height= SCREEN_H;
            }
        pix_unit = gcd(width,height);
        conv_num = 0;
        InitWindow(width, height, "HapticScene (Mouse Interface)");
       // InitPhysics();
       // SetPhysicsGravity(0.0f,0.0f);
        SetTargetFPS(120);
    }

    ~HapticScene()
    {
        for(int i = 0; i < conv_num; ++i)
            delete convs[i];
        CloseWindow();
    }

    void create_convex(Vector2 center,int radius, bool physics)
        {
            if (convs.size()==0)
                {
                    convs.push_back(new RConvex((Vector2){width/2,height/2},radius,pix_unit,false));
                   // CreatePhysicsBodyConvex((Vector2){width/2,height/2},radius, 10);
                }
            else
                {
                    convs.push_back(new RConvex(center,radius,pix_unit,physics));
                    //if (physics)
                    //    CreatePhysicsBodyConvex(center,radius,10);
                }

            ++conv_num;
            return;
        }

    const std::vector<RConvex*>& convs_ref() {return convs;}
    std::vector<RConvex*>& convs_ref(int i) {return convs;}


    
    void move(Vector2 pos,int i)
    {
        if ((i <= 0) || ( i >= conv_num))
            return;
        else
            convs[i]->move(pos);
    }

    void draw_convex(int i,Color color)
    {
        if ((i < 0) || ( i >= conv_num))
            return;
        else
            DrawCircleLinesV(convs[i]->center,convs[i]->radius_i,color);
    }

    float center_distance_square(int i1,int i2) {return std::pow(convs[i1]->center_f.x-convs[i2]->center_f.x,2)+std::pow(convs[i1]->center_f.y-convs[i2]->center_f.y,2);}
    float center_distance(int i1,int i2) {return sqrt(center_distance_square(i1,i2));}

    bool circle_collision(int i1,int i2)
    {
        double totalradius_square = std::pow(convs[i1]->radius_f+convs[i2]->radius_f,2);
        if (center_distance_square(i1,i2) <= totalradius_square)
            return true;
        else
            return false;
    }
     float force_mag(int c1,int c2)
        {
            if (!circle_collision(c1,c2))
                return 0.0;
            else
                return -2.4525*center_distance(c1,c2);
        }


        Vector2 force_direction(int c1,int c2)
        {
            Vector2 normal;
            if(!circle_collision(c1,c2))
               normal = {0};

            else
            {
                normal = Vector2Normalize((Vector2){(convs[c2]->center_f.x-convs[c1]->center_f.x),
                        (convs[c2]->center_f.y-convs[c1]->center_f.y)});
            }

            return normal;
        }


private:
    int width;
    int height;
    int pix_unit;
    std::vector<RConvex*> convs;
    int conv_num;
};

//Rotate a point p x radians about the point o
Vector2 rotate_point(Vector2 p,Vector2 o, float rads)
    {
        Vector2 result;
        result.x = cos(rads)*(p.x-o.x)-sin(rads)*(p.y-o.y)+o.x;
        result.y = sin(rads)*(p.x-o.x)+cos(rads)*(p.y-o.y)+o.y;

        return result;

    }
#endif
