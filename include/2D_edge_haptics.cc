#include "HapticScene.h"

int main(int argc, char** argv)
{
    int side_number;
    std::cout << "Enter the number of sides for the convex polygon: ";
    std::cin >> side_number;
    if (side_number < 3)
    {
        std::cout << "Number of sides to small. Defaulting to a triangle." << std::endl;
        side_number = 3;
    }

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

        if(min_dist < 300)
            DrawCircleLinesV(ppoint[mindex],10,RED);


        EndDrawing();
    }

    return 0;

}
