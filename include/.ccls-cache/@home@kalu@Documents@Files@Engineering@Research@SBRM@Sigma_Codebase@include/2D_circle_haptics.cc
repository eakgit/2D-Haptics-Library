#include "HapticScene.h"


int main(int argc, char** argv)
{
    //Create the files to store all the important datapoints
    std::fstream green_position,red_position,force;
    green_position.open("../data/green_position.csv",std::fstream::out|std::fstream::trunc);
    red_position.open("../data/red_position.csv",std::fstream::out|std::fstream::trunc);
    force.open("../data/force.csv",std::fstream::out|std::fstream::trunc);

    //CSV Formatting
    green_position << "Time(s),X,Y," << std::endl;
    red_position << "Time(s),X,Y," << std::endl;
    force << "Time(s),Force_mag (N),Angle," << std::endl;
    std::chrono::time_point<std::chrono::steady_clock> start, end;

    //Initialize the window, the circles and the important datapoints
    int screenWidth = SCREEN_W -120;
    int screenHeight = SCREEN_H - 120;
    HapticScene scr(screenWidth,screenHeight);
    Vector2 mospos = GetMousePosition(),last_green_center= {0},last_red_center= {0};
    scr.create_convex((Vector2){screenWidth/2,screenHeight/2},300,false);
    scr.create_convex(mospos,10,true);
    scr.create_convex(mospos,10,false);
    float force_mag,abs_angle;
    Vector2  green_center,force10,force02,force12;
    float totalradius_square = std::pow(scr.convs_ref()[0]->radius_f+scr.convs_ref()[1]->radius_f,2);
    start = std::chrono::steady_clock::now();
    while (!WindowShouldClose())    // Detect window close button or ESC key
    {
        // Draw
        //----------------------------------------------------------------------------------
        BeginDrawing();
        ClearBackground(BLACK);


        scr.draw_convex(0,DARKBLUE); //Draw the base circle
        mospos = GetMousePosition(); //Get the current position of the mouse

        //Get the forces between the various circles
        force10 = Vector2Subtract(scr.convs_ref()[0]->center,scr.convs_ref()[1]->center);
        force02 = Vector2Subtract(scr.convs_ref()[0]->center,scr.convs_ref()[2]->center);
        force12 = Vector2Subtract(scr.convs_ref()[1]->center,scr.convs_ref()[2]->center);

        Vector2 norm_force10 = Vector2Normalize(force10);
        Vector2 norm_force02 = Vector2Normalize(force02);

        //Get the angle between the first and second circle centers
        float angle102 = Vector2Angle(norm_force10,norm_force02);

        //If the green circle is moving and not colliding with the base circle
        if(scr.convs_ref()[1]->phys && !scr.convex_collision(0,1))
            {
                //If the green circle is moving and not in contact with the base circle
                //Set the current center of the green circle to the mouse position
                force_mag = 0;
                scr.move_convex(mospos,1);
                scr.draw_convex(1,GREEN);
                green_center = mospos;
            }

        else if(scr.convs_ref()[1]->phys && scr.convex_collision(0,1))
            {
                //If the green circle is moving and in contact with the base circle
                //stop moving that circle and start using the red circle as the circle
                //of mouse movement
                scr.convs_ref()[1]->phys = false;
                scr.convs_ref()[2]->phys = true;


                scr.draw_convex(2,RED);
                scr.move_convex(mospos,2);

                //Make sure the green circle moves in the direction of the angle difference
                if((std::abs(angle102) >= 0.0625) && (std::abs(angle102) <= M_PI-0.0625))
                    green_center = rotate_point(scr.convs_ref()[1]->center,scr.convs_ref()[0]->center, min(angle102,-angle102));

                scr.move_convex(green_center,1);
                scr.draw_convex(1,GREEN);
                //Set the force of the spring
                force_mag = -2.4525*scr.distance(1,2);

               //DrawText(TextFormat("Angle between Force_0-1 and Force_2-0 : %f",angle102), 10, 70, 20, WHITE);
                DrawLineV(scr.convs_ref()[1]->center,scr.convs_ref()[0]->center,SKYBLUE);
                DrawLineV(scr.convs_ref()[0]->center,scr.convs_ref()[2]->center,PURPLE);
                DrawLineV(scr.convs_ref()[2]->center,scr.convs_ref()[1]->center,MAROON);
            }

        else if(scr.convs_ref()[2]->phys && scr.convex_collision(0,2))
            {

                scr.draw_convex(2,RED);
                scr.move_convex(mospos,2);
                if((std::abs(angle102) >= 0.0625 ) && (std::abs(angle102) <= M_PI-0.0625))
                            green_center = rotate_point(scr.convs_ref()[1]->center,scr.convs_ref()[0]->center,angle102);

                scr.move_convex(green_center,1);
                scr.draw_convex(1,GREEN);
                force_mag = -2.4525*scr.distance(1,2);

                //DrawText(TextFormat("Angle between Force_0-1 and Force_2-0 : %f",angle102), 10, 70, 20, WHITE);
                DrawLineV(scr.convs_ref()[1]->center,scr.convs_ref()[0]->center,SKYBLUE);
                DrawLineV(scr.convs_ref()[0]->center,scr.convs_ref()[2]->center,PURPLE);
                DrawLineV(scr.convs_ref()[2]->center,scr.convs_ref()[1]->center,MAROON);
            }

        else if(scr.convs_ref()[2]->phys && !scr.convex_collision(0,2))
            {
                //Return to the original movement state when exiting the base circle

                scr.convs_ref()[1]->phys = true;
                scr.convs_ref()[2]->phys = false;
                force_mag = -2.4525*scr.distance(1,2);
                scr.move_convex(mospos,1);
                scr.draw_convex(1,GREEN);
                green_center = mospos;

            }
        abs_angle = Vector2Angle(Vector2Normalize(Vector2Subtract(mospos,scr.convs_ref()[0]->center)),(Vector2){1,0});
        end = std::chrono::steady_clock::now();
        std::chrono::duration<double> elapsed_seconds = end - start;

        //Print the green circle data to its corresponding file
        green_position << elapsed_seconds.count() << "," << scr.convs_ref()[1]->center_f.x << "," <<  scr.convs_ref()[1]->center_f.y << "," << std::endl;
        //Print the red circle data to its corresponding file
        red_position << elapsed_seconds.count() << "," << scr.convs_ref()[2]->center_f.x << "," <<  scr.convs_ref()[2]->center_f.y << "," << std::endl;
        //Print the force data to its corresponding file
        force << elapsed_seconds.count() << "," << force_mag << "," << abs_angle << "," << std::endl;

        //Print all the data on screen in real time
        DrawRectangleLines(10,10,400,300,WHITE);
        DrawText(TextFormat("Elpased Time (seconds): %f",elapsed_seconds.count()),20,20,20,WHITE);
        DrawText(TextFormat("Green Position: [%f,%f]",scr.convs_ref()[1]->center_f.x,scr.convs_ref()[1]->center_f.y),20,45,20,WHITE);
        DrawText(TextFormat("Red Position: [%f,%f]",scr.convs_ref()[2]->center_f.x,scr.convs_ref()[2]->center_f.y),20,70,20,WHITE);
        DrawText(TextFormat("Force Magnitude: %f",force_mag),20,95,20,WHITE);
        DrawText(TextFormat("Force Angle (Rel. to [1,0]): %f",abs_angle),20,110,20,WHITE);
        EndDrawing();
        //----------------------------------------------------------------------------------
    }

    return 0;
}
