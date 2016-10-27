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
%burnTime = 30; 	    % burn time of the rocket in seconds
stopTime = 3500;     % time (in seconds) when the simulation stops
timeStep = 1;     % time step size for the simulation (every 0.1 seconds)
v(1) = 0;           % rocket velocity in m/s
vY(1) = 0;          % Velocity in x direction
vX(1)= 0;           % Velocity in y direction
downRange(1) = 0;   % rocket downRange in m
altitude(1) = 0;    % rocket altitude in m
time(1) = 0;        % time since launch, in seconds
fuel(1)=fuel;
angle = 80;
earth = 6400000;          % Earth's radius in meters
g(1) = 9.8; 	         % acceleration of gravity


i=1;
while(time(i)<stopTime)%altitude(i)>=0)
    
    if(fuel(i)>0)
        vY(i+1)=vY(i)+((thrust*sind(angle))/mass-g(i))*timeStep;
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
    g(i+1)= ((earth^2)*g(1))/((altitude(i+1)+earth)^2);
    i=i+1;
end
printf('\n');
printf('Max Altitude: %.2f m\n', max(altitude));
printf('Max Down Range: %.2f m\n', max(downRange));
printf('Max Altitude: %.2f mi\n', (max(altitude)/1609.34));
printf('Max Down Range: %.2f mi\n', (max(downRange)/1609.34));
printf('Max Velocity: %.2f m/s\n', (max(v)));
printf('Max Velocity: %.2f mph\n', (max(v)*2.23694));


%max(altitude)
%max(downRange)
%max(time)

plot(time, altitude, time, downRange);
title('Altitude/Distance v. Time @ 80 degrees');
xlabel('Time (in seconds)');
ylabel('Altitude/Distance (in meters)');
legend('Altitude','Distance');