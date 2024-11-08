clc
clear
close all

function [x,y] = mouse_position(fig,even)
    
end

function [force_mag, force_dir] = normal_force(mouse_pos,circle)
    
end


function main
    radius = input('Enter the radius of the circle');
    if radius <= 0
        radius = 1
    end

    th = linspace(0,2*pi,1000);

    circ_x = radius*cos(th);
    circ_y = radius*sin(th);

end
