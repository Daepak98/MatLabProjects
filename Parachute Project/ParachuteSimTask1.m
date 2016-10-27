%Parachute Simulation Project Task 0;
%Greg King
%October 24, 2016

clc;
clear all;
close all;


timeStep = 1;
time(1) = 0;
alt(1) = 4000;
g = 9.8;
vel(1) = 0;
i = 1;
km = .1;

while(alt(i)>0)
    vel(i+1) = vel(i) + deltaV(vel(i), timeStep, time(i));
    distFall = ((vel(i+1) + vel(i))/2)*timeStep;
    alt(i+1) = alt(i) - distFall;
    time(i+1) = time(i) + timeStep;
    i = i + 1;
end

disp(' ');

disp('Max Velocity')
disp(max(vel))
disp('Velocity before hitting ground')
disp(vel(i))
disp('Time taken')
disp(max(time))

subplot(1,2,1)
plot(vel);
xlabel('Time in s');
ylabel('Velocity in m/s');

subplot(1,2,2);
plot(alt);
xlabel('Time in s');
ylabel('Altitude in m');


%disp(vel)