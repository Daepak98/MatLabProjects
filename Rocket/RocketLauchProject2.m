% Rocket Project, Take 1
% Deepak Warrier
% September 22, 2016

clc;
clear all;
close all;

g = 9.8; 	        % acceleration of gravity
thrust = 50; 	    % thrust of the rocket motor in Newtons (kg*m/s^2)
mass = 2;           % mass of the rocket in kg
burnTime = 30; 	    % burn time of the rocket in seconds
stopTime = 300;     % time (in seconds) when the simulation stops
timeStep = 0.1;     % time step size for the simulation (every 0.1 seconds)
v(1) = 0;           % rocket velocity in m/s
vY(1) = 0;          % Velocity in x direction
vX(1)= 0;           % Velocity in y direction
downRange(1) = 0;   % rocket downRange in m
altitude(1) = 0;    % rocket altitude in m
time(1) = 0; 	    % time since launch, in seconds
angle = 75;

i=1;
while(altitude(i)>=0)
    
    if(time(i)<=burnTime)
        vY(i+1)=vY(i)+((thrust*sind(angle))/mass-g)*timeStep;
        vX(i+1)=vX(i)+(thrust*cosd(angle)/mass)*timeStep;
    else
        vY(i+1)=vY(i)-g*(timeStep);
        vX(i+1)=vX(i);
    end
    
    avgVelY=(vY(i+1)+vY(i))/2;
    avgVelX=(vX(i+1)+vX(i))/2;
    v(i)=(vX(i+1)^2+vY(i+1)^2)^.5;
    downRange(i+1)=downRange(i)+avgVelX*timeStep;
    altitude(i+1)=altitude(i)+avgVelY*timeStep;
    time(i+1)=time(i)+timeStep;
    i=i+1;
end



disp('Max Down Range in m' max(downRange), 'Max Altitude in m' max(altitude), 'Max Horizontal Velocity in m/s' max(vX), 'Max Vertical Velocity in m/s' max(vY), 'Max Velocity in m/s' max(v), 'Total time in s' max(time));
plot(time, altitude, time, downRange);
title('Altitude/Distance v, Time @ 75 degrees');
xlabel('Time (in seconds');
ylabel('Altitude/Distance (in meters)');