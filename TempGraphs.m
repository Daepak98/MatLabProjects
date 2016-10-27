%Red Sea Met Data #1
%September 6,2016
%Deepak Warrier

clc;
clear all;
load('Red_Sea_Met_Data.mat');
md=Red_Sea_Met_Data;
disp('You should graph the temperatures at both altidtudes over the entire time period, with both graphs being on the same plot. You need to include a title, legend and labels for the axes.')
x=md(:,5);
y=md(:,8);

plot(x,'g', y, 'r')
legend('Temperature at 5.5m', 'Temperature at 3m')
legend('boxoff')
title('Temperatures at 5.5m and 3m vs. Time at the Red Sea')
xlabel('Time in minutes')
ylabel('Temperature in Celsius')