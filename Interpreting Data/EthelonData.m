close all
clear all
clc

masses = csvread('data_hundred_acre_wood.csv');
hist(masses, 100);
xlabel('Weight of Heffalumps');
ylabel('# of Heffalumps');