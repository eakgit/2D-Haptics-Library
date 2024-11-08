clc
clear
close all

green_position = readtable('green_position.csv');
gtime = green_position{:,1};
gxpos = green_position{:,2};
gypos = green_position{:,3};
gdistance = green_position{:,4};
gangle = green_position{:,5};


figure();
hold on
subplot(3,3,1)
axis equal
plot(gtime,gdistance)
xlabel('Time (s)')
ylabel("Distance of Green Circle Center to the Base's Center")
title('Green Circle Distance from Rigid Body Center over Time')

subplot(3,3,2)
axis equal
plot(gtime,gangle)
xlabel('Time (s)')
ylabel('Green Angle')
title('Green Circle Angle over Time')



subplot(3,3,3)
axis equal
plot(gxpos,gypos)
xlabel('Green Circle X')
ylabel('Green Circle Y')
title('Green Circle Path')

red_position = readtable('red_position.csv');
rtime = red_position{:,1};
rxpos = red_position{:,2};
rypos = red_position{:,3};
rdistance = red_position{:,4};
rangle = red_position{:,5};


subplot(3,3,4)
axis equal
plot(rtime,rdistance)
xlabel('Time (s)')
ylabel("Distance of Red Circle Center to the Base's Center")
title('Red Circle Distance from Rigid Body Center over Time')

subplot(3,3,5)
axis equal
plot(rtime,rangle)
xlabel('Time (s)')
ylabel('Red Angle')
title('Red Circle Angle over Time')



subplot(3,3,6)
axis equal
plot(rxpos,rypos)
xlabel('Red Circle X')
ylabel('Red Circle Y')
title('Red Circle Path')



force = readtable('force.csv');
ftime = force{:,1};
fmag = force{:,2};
fangle = force{:,3};



subplot(3,3,7)
axis equal
plot(ftime,fmag)
xlabel('Time (s)')
ylabel('Force Magnitude(N)')
title('Force Magnitude over Time')


subplot(3,3,8)
axis equal
plot(ftime,fangle)
xlabel('Time (s)')
ylabel('Force angle component')
title('Force angle component over Time')

