%Red Sea Met Data #1
%September 6,2016
%Zack Kowatch, Deepak Warrier

clc;
clear all;
load('Red_Sea_Met_Data.mat');
md=Red_Sea_Met_Data;
disp('Task 1')
rows=(1013:60:2393);
cols=[6,9,11];
x=md(rows, cols)

means=[mean(x)]
mins=[min(x)]
max=[max(x)]
stds=[std(x)]

disp(' ')
disp('Task 2')
x=[mean(md(1:10, 5:11)); mean(md(1441:1450, 5:11)); mean(md(2881:2890, 5:11))]


%Create and display a 3x7 array where each row represents a different day (11,12,13) 
%and each column represents the average of the readings for the ten minutes 
%beginning at 8:08 and ending at 8:17.