%Parachute Simulation Project Task 6;
%Greg King
%October 24, 2016

clc;
clear all;
close all;


timeStep = .1;
time(1) = 0;
alt(1) = 4000;
g = 9.8;
planeS = 140*1000;
velY(1) = 0;
velX(1) = planeS;
accelY(1) = 0;
accelX(1) = 0;
i = 1;
km = .01;

while(alt(i)>0)
    velY(i+1) = velY(i) + deltaV(velY(i), timeStep, time(i), alt(i), g);
    distFall = ((velY(i+1) + velY(i))/2)*timeStep;
    accelY(i) = deltaV(velY(i), timeStep, time(i), alt(i))/timeStep;
    alt(i+1) = alt(i) - distFall;
    
    velX(i+1) = velX(i) - deltaV(velX(i), timeStep, time(i), alt(i), 0);
    distHorz = ((velX(i+1) + velX(i))/2)*timeStep;
    accelX(i) = drag(velX(i), time(i), alt(i));
    
    time(i+1) = time(i) + timeStep;
    i = i + 1;
end

disp(' ');

disp('Max vertical velocity')
disp(max(velY))
disp('Vertical Velocity before hitting ground')
disp(velY(i))

disp('Max horizontal velocity')
disp(max(velX))
disp('Horizontal Velocity before hitting ground')
disp(velX(i))

disp('Max Acceleration')
disp(max(accel))
disp('Time taken')
disp(max(time))

plot(accel);

subplot(3,3,1)
plot(velY);
xlabel('Time in s');
ylabel('Velocity in Y in m/s');

subplot(3,3,2);
plot(velX);
xlabel('Time in s');
ylabel('Velocity in X in m');

subplot(3,3,3);
plot(alt);
xlabel('Time in s');
ylabel('Altitude in m');

subplot(3,3,4);
plot(accelY);
xlabel('Time in s');
ylabel('Acceleration in m/s^2');

subplot(3,3,5);
plot(accelY);
xlabel('Time in s');
ylabel('Acceleration in m/s^2');