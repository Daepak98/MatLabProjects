%Mat #2
%Spetember 6, 2016
%Deepak Warrier

clc;
clear;
close all;
format short;


disp('Problem #1')
prob1A=[4, 9, -23, 7.77, 8000, 3.141]
prob2B=[sqrt(44), log(51)/log(e), 2^3, 5*tand(25)]
disp(' ');

disp('Problem #2')
arrayPi = linspace(-pi, 2*pi, 8)
disp(' ');

disp('Problem #3')
A=[1 2 3];
B=[4 5 6];
C=[7 8 9];
prob3A=[A, B, C]
prob3B=[A;B;C]
prob3C=prob3B'
disp(' ');

disp('Problem #4')
days=[(1:1:7);.4,.1,.1,.8,.7,.9,.3]
days=days'
disp(' ')

disp('Problem #5')
B=[linspace(0,28,8); linspace(69, 62, 8); (1.4:-.3:-.7)]
