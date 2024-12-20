#ifndef HAPTICSCENE_H_
#define HAPTICSCENE_H_
#include "raylib.h"
#include <iostream>
#include <chrono>
#include <Eigen/Core>
#include <Eigen/Dense>
#include <fstream>
#include <cmath>
#include <vector>
#include <climits>
#include "MiscFunctions.h"


#define PHYSAC_IMPLEMENTATION
#include "physac.h"

#define SCREEN_W 1920
#define SCREEN_H 1080
#define     F_PI                        3.14159265358979323846f
#define     PHYSAC_FLT_MAX              3.402823466e+38f
#define     PHYSAC_EPSILON              0.000001f
#define     PHYSAC_K                    1.0f/3.0f
#define     PHYSAC_VECTOR_ZERO          (Vector2){ 0.0f, 0.0f }




struct RConvex
{
    RConvex(Vector2 center_,int radius_,int gcd_,int side_num = INT_MAX, bool physics = false)
    {
        center = center_;

        //Make sure the radius in nonegative
        if (radius_ >= 0)
            radius_i = radius_;
        else
            radius_i = 0;

        if(side_num < 3)
            edge_num = 3;
        else
            edge_num = side_num;


        if (gcd_ >= 1)
            gcd = gcd_;
        else
            gcd = 1;

        //Convert the radius and center from integer-based pixel
        //measurements to float-based coordinate measurments
        radius_f = static_cast<float>(radius_i)/gcd;
        center_f = (Vector2){center.x/gcd,center.y/gcd};

        phys = physics; //Right now, enables movement.
    }

    ~RConvex()
    {
        center = center_f = {0};
        radius_i - 0; radius_f = 0;
        edge_num = 0;
        vertices.clear();
        normals.clear();
    }


    //Moves the center of the circle to a new [x,y]
    virtual void move(Vector2 newpos) = 0;

    Vector2 center;   // Center of the circle in screen coordinates
    Vector2 center_f; // "                     " x-y axis coordinates
    int radius_i;     // Radius of the circle in screen units
    float radius_f;   // "                     " x-y axis coordinates
    bool phys;        //Flag to allow for movement
    int edge_num;     //Number of sides in polygon (INT_MAX for circle)
    int gcd;         // Number of pixels per unit
    std::vector<Vector2> vertices;
    std::vector<Vector2> normals;
};


struct RCircle: public RConvex
{
    RCircle(Vector2 center_,int radius_,int gcd_, bool physics) : RConvex(center_,radius_,gcd_,INT_MAX,physics) {}
    void move(Vector2 newpos)
    {
        center = newpos;
        center_f = (Vector2){center.x/gcd,center.y/gcd};
    }
};

struct RPolygon: public RConvex
{
     RPolygon(Vector2 center_,int radius_,int gcd_, int side_num,bool physics) : RConvex(center_,radius_,gcd_,side_num,physics)
    {
        //Define the vertices of the polygon
        for (int k =0; k < edge_num; ++k)
            vertices.push_back((Vector2){center.x+radius_i*cos((2*F_PI*k)/edge_num),center.y+radius_i*sin((2*F_PI*k)/edge_num)});

        for(int n = 0; n < edge_num;++n)
        {
            Vector2 curredge;
            if (n == edge_num -1)
                curredge= Vector2Subtract(vertices[0],vertices[n]);
            else
                curredge = Vector2Subtract(vertices[n+1],vertices[n]);

            normals.push_back( Vector2Normalize((Vector2){-curredge.y,curredge.x}));
        }
    }

    void move(Vector2 newpos)
    {
        Vector2 translate = Vector2Subtract(newpos,center);

        for (int k = 0; k < edge_num; ++k)
            vertices[k] = Vector2Add(translate,vertices[k]);


        center = newpos;
        center_f = (Vector2){center.x/gcd,center.y/gcd};
    }
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
            pix_unit = gcd_func(width,height);
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

        void create_convex(Vector2 center,int radius, bool physics,int side_num = INT_MAX)
        {
            if (convs.size()==0)
            {
                if(side_num == INT_MAX)
                    convs.push_back(new RCircle((Vector2){width/2,height/2},radius,pix_unit,false));
                // CreatePhysicsBodyCircle((Vector2){width/2,height/2},radius, 10);
                else
                    convs.push_back(new RPolygon((Vector2){width/2,height/2},radius,pix_unit,side_num,false));
            }
            else
            {
                if(side_num == INT_MAX)
                    convs.push_back(new RCircle(center,radius,pix_unit,physics));
                //if (physics)
                //    CreatePhysicsBodyCircle(center,radius,10);
                else
                    convs.push_back(new RPolygon(center,radius,pix_unit,side_num,physics));
            }

            ++conv_num;
            return;
        }

        const std::vector<RConvex*>& convs_ref() {return convs;}
        std::vector<RConvex*>& convs_ref(int i) {return convs;}



        void move_convex(Vector2 pos,int i)
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
            {
                if(convs[i]->edge_num == INT_MAX)
                    DrawCircleLinesV(convs[i]->center,convs[i]->radius_i,color);
                else
                    for(int k = 0; k < convs[i]->edge_num;++k)
                    {
                        if (k == convs[i]->edge_num - 1)
                            DrawLineV(convs[i]->vertices[0],convs[i]->vertices[k],color);
                        else
                            DrawLineV(convs[i]->vertices[k+1],convs[i]->vertices[k],color);
                    }
            }

        }


        float distance_square(int i,int k) {return center_distance_square(convs[i]->center_f,convs[k]->center_f);}
        float distance(int i,int k) {return center_distance(convs[i]->center_f,convs[k]->center_f);}
        bool convex_collision(int i1,int i2)
        {
            return circle_collision(convs[i1]->center_f,convs[i2]->center_f,convs[i1]->radius_f,convs[i2]->radius_f);
        }



        float force_mag(int c1,int c2)
        {
            if (!convex_collision(c1,c2))
                return 0.0;
            else
                return -2.4525*distance(c1,c2);
        }


        Vector2 force_direction(int c1,int c2)
        {
            Vector2 normal;
            if(!convex_collision(c1,c2))
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


#endif // HAPTICSCENE_H_
