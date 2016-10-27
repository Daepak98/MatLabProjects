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
angle = 90; 	    % the launch angle of the rocket
velocity(1) = 0;    % rocket velocity in m/s
altitude(1) = 0;    % rocket altitude in m
time(1) = 0; 	    % time since launch, in seconds

i=1;
while(altitude(i)>=0)
    % Put code here to compute and record the altitude, velocity and time
    % at each step in the simulation.
    if(time(i)<=burnTime)
         velocity(i+1)=velocity(i)+(thrust/mass-g)*timeStep;
         %disp('memes');
    else
        velocity(i+1)=velocity(i)-(g)*timeStep;
        %disp('pp');
    end
    avgVel=(velocity(i)+velocity(i+1))/2;
    altitude(i+1)=altitude(i)+avgVel*timeStep;
    time(i+1)=time(i)+timeStep;
    %disp(time(i));
    i=i+1;
end

disp(max(altitude), max(velocity), max(time));
plot(time,altitude)
xlabel('Time (in seconds)');
ylabel('Altitude (in meters)');