% Rocket Project, Take 1
% Deepak Warrier
% September 22, 2016

clc;
clear all;
close all;

g = 9.8; 	        % acceleration of gravity
thrust = 25000;     % thrust of the rocket motor in Newtons (kg*m/s^2)
rocketMass = 400;   % mass of the rocket itself in kg
fuel = 1200;        % mass of fuel in kg
burnRate = 2; 	    % rate of rocket fuel burn in kg/second
mass = rocketMass+fuel;           % mass of the rocket in kg
burnTime = 30; 	    % burn time of the rocket in seconds
stopTime = 300;     % time (in seconds) when the simulation stops
timeStep = 0.1;     % time step size for the simulation (every 0.1 seconds)
v(1) = 0;           % rocket velocity in m/s
vY(1) = 0;          % Velocity in x direction
vX(1)= 0;           % Velocity in y direction
downRange(1) = 0;   % rocket downRange in m
altitude(1) = 0;    % rocket altitude in m
time(1) = 0;        % time since launch, in seconds
fuel(1)=fuel;
angle = 80;

i=1;
while(fuel(i)>0)
    
    if(fuel(i)>0)
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
    fuel(i+1)=fuel(i)-timeStep*burnRate;
    mass=rocketMass+fuel(i+1);
    i=i+1;
end

disp('Max velocity in m/s')
max(v)
disp('Max velocity in kph')
kph=max(v)*3.6
disp('Max velocity in mph');
mph=max(v)*2.23693629

max(altitude)
max(downRange)
max(time)

plot(time, altitude, time, downRange);
title('Altitude/Distance v. Time @ 80 degrees');
xlabel('Time (in seconds)');
ylabel('Altitude/Distance (in meters)');
legend('Altitude','Distance');