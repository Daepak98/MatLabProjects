%Deepak Warrier
%Stochastic Sim - Dice
%10-18-16

clear all;
close all;
clc;

count = 10000;

rolls1 = randi(ones(1, count), 6*ones(1, count));
rolls2 = randi(ones(1, count), 6*ones(1, count));
rolls3 = randi(ones(1, count), 6*ones(1, count));
rollsSum = rolls1+rolls2+rolls3;

counts = hist(rollsSum, 3:18);
hist(rollsSum, 3:18)
xlabel('sum, 3-18')
ylabel('count')
title('Frequency of sums, 3-18')

i = 1;
while(i<=16)
    disp(i+2)
    disp(counts(i)/count)
    i = i+1;
end