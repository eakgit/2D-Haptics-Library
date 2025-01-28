#include "HapticScene.h"
int main(int argc, char*  argv)
{
    int side_number;
    std::cout << "Enter the number of sides for the convex polygon: ";
    std::cin >> side_number;
    if (side_number < 3)
    {
        std::cout << "Number of sides to small. Defaulting to a triangle." << std::endl;
        side_number = 3;
    }


    //Create the files to store all the important datapoints
    std::fstream green_position,red_position,force;
    std::vector<Vector2> colpoints;
    int col_pc,col_index;

    green_position.open("../data/edge_green_position.csv",std::fstream::out|std::fstream::trunc);
    red_position.open("../data/edge_red_position.csv",std::fstream::out|std::fstream::trunc);
    force.open("../data/edge_force.csv",std::fstream::out|std::fstream::trunc);



    //CSV Formatting
    green_position << "Time(s),X,Y," << std::endl;
    red_position << "Time(s),X,Y," << std::endl;
    force << "Time(s),Force_mag (N),Angle," << std::endl;
    std::chrono::time_point<std::chrono::steady_clock> start, end;


    int screenWidth = SCREEN_W -120;
    int screenHeight = SCREEN_H - 120;
    HapticScene scr(screenWidth,screenHeight);
    Vector2 mospos = GetMousePosition(),last_green_center= {0},last_red_center= {0};
    scr.create_convex((Vector2){screenWidth/2,screenHeight/2},400,false,side_number);
    scr.create_convex(mospos,10,true);
    Vector2  green_center,force10,force02,force12;
    int edge_number = scr.convs_ref()[0]->edge_num;
    //Vector2 ppoint[side_number];
    std::vector<Vector2> ppoint;
    ppoint.reserve(side_number);
    Vector2 force_dir,normal;
    float force_mag,abs_angle;
    start = std::chrono::steady_clock::now();

    while (!WindowShouldClose())    // Detect window close button or ESC key
    {
        // Draw
        //----------------------------------------------------------------------------------
        BeginDrawing();
        ClearBackground(BLACK);
        scr.draw_convex(0,BLUE);

        mospos = GetMousePosition();
        scr.move_convex(mospos,1);
        scr.draw_convex(1,GREEN);
        Vector2 edge1,edge2;

        //Find the closes point to the mouse on the polygon
        float min_dist = scr.convs_ref()[0]->radius_i;
        int mindex = -1;
        for (int i = 0; i < side_number; ++i)
        {
            if (i == side_number-1)
            {
                edge1 = scr.convs_ref()[0]->vertices[0];
                edge2 = scr.convs_ref()[0]->vertices[side_number-1];
            }

            else
            {
                edge1 = scr.convs_ref()[0]->vertices[i];
                edge2 = scr.convs_ref()[0]->vertices[i+1];
            }

            if(PPonLS(edge1,edge2,scr.convs_ref()[1]->center))
            {
                ppoint[i] = getPPoLFast(edge1,edge2,scr.convs_ref()[1]->center);
                float dist_i = Vector2Distance(scr.convs_ref()[1]->center,ppoint[i]);
                if(dist_i < min_dist)
                {
                    min_dist = dist_i;
                    mindex = i;
                }
            }
        }


        //If the mouse is on or inside the polygon, generate a simulated sprind force
        //following the normal direction to the surface at the closest point to the surface
        if(scr.convex_collision(0,1,colpoints,col_pc,col_index) || PoinP(scr.convs_ref()[0]->vertices,scr.convs_ref()[1]->center))
        {
            DrawCircleLinesV(ppoint[mindex],10,RED);
            force_mag = 2.4525*center_distance(scr.convs_ref()[1]->center_f, Vector2{ppoint[mindex].x/scr.convs_ref()[1]->gcd,ppoint[mindex].y/scr.convs_ref()[1]->gcd});


            normal = (Vector2) {scr.convs_ref()[1]->center.y-ppoint[mindex].y,ppoint[mindex].x-scr.convs_ref()[1]->center.x};

            force_dir = Vector2Normalize(normal);
            abs_angle = Vector2Angle(force_dir,(Vector2){1,0});
        }

        //Otherwise, generate no force
        else
        {
            force_mag = 0;
            force_dir = {0};
            abs_angle = Vector2Angle(force_dir,(Vector2){1,0});
        }


        end = std::chrono::steady_clock::now();
        std::chrono::duration<double> elapsed_seconds = end - start;

        //Print the green circle data to its corresponding file
        green_position << elapsed_seconds.count() << "," << scr.convs_ref()[1]->center_f.x << "," <<  scr.convs_ref()[1]->center_f.y << "," << std::endl;
        //Print the red circle data to its corresponding file
        red_position << elapsed_seconds.count() << "," << ppoint[mindex].x << "," <<  ppoint[mindex].y << "," << std::endl;
        //Print the force data to its corresponding file
        force << elapsed_seconds.count() << "," << force_mag << "," << abs_angle << "," << std::endl;

        //Print all the data on screen in real time
        DrawRectangleLines(10,10,400,300,WHITE);
        DrawText(TextFormat("Elpased Time (seconds): %f",elapsed_seconds.count()),20,20,20,WHITE);
        DrawText(TextFormat("Green Position: [%f,%f]",scr.convs_ref()[1]->center_f.x,scr.convs_ref()[1]->center_f.y),20,45,20,WHITE);
        DrawText(TextFormat("Red Position: [%f,%f]",ppoint[mindex].x,ppoint[mindex].y),20,70,20,WHITE);
        DrawText(TextFormat("Force Magnitude: %f",force_mag),20,95,20,WHITE);
        DrawText(TextFormat("Force Angle (Rel. to [1,0]): %f",abs_angle),20,110,20,WHITE);
        EndDrawing();

        EndDrawing();
    }

    return 0;

}
