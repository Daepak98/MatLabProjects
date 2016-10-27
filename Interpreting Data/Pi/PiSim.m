%Deepak Warrier
%Stochastic Simulation - Pi
%10-18-16

clear all;
close all;
clc;

x(1) = 0;
y(1) = 0;
s = 2;
square = s^2;
count = 1;
countPi = 0;
numPts = 1000
while(count<=numPts)
    x(count) = 2*rand()-1;
    y(count) = 2*rand()-1;
    if((x(count)^2 + y(count)^2)<=1)
        countPi = countPi+1;
        %disp('In the Circle');
    end
    count = count+1;
end

disp(' ');
piEst = (countPi/numPts)*square
piAct = pi
z = [x;y];
z = transpose(z);
csvwrite('Points.csv', z)
        