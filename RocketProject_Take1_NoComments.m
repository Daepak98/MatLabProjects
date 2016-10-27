% Rocket Project, Take 1
% Greg King
% September 2, 2016

clc;
clear all;
close all;

% We are going to simulate a rocket launch. We will be recording the 
% altitude, distance down range and velocity at 0.1 second intervals
% and we will start by assuming constant thrust from a 10 minute 
% burn time for the rocket. After simulating the launch we will graph
% the altitude, down range distance and velocity of the rocket

%Setting Variables
g = 9.8;
thrust = 25000; 
mass = 1000; 
burnTime = 600; 
timeStep = 0.1; 
angle = 80; 
velocity(1) = 0; 
altitude(1) = 0; 
range(1) = 0; 
time(1) = 0; 

%Initialize loop counter
i=1;
while(time(i)<burnTime)
 velocity(i+1) = velocity(i) + (thrust/mass - g)*timeStep; %vf = v0 + at
 time(i+1) = time(i) + timeStep; %add .1s to time
 altitude(i+1) = altitude(i) + (velocity(i)+velocity(i+1))/2*sind(angle)*timeStep; %xf =  x0 + vt
 range(i+1) = range(i)  + (velocity(i)+velocity(i+1))/2*cosd(angle)*timeStep; %yf = x0 + vt
 i=i+1; %Counter++
end

disp(max(time), max(altitude), max(velocity));
plot(time,altitude);
 