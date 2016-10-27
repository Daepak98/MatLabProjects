close all;
clear all;
clc;

%You need to find the mean and standard deviation of the amount of caffeine
%excluding any values more than two standard deviations above the mean 
%of the whole sample

caffeine = csvread('caffeine.csv');
avgBigCups = mean(caffeine)
stdBigCups = std(caffeine)
excluded(1) = 0;

j = 1;

for(i = 1 : 1 : numel(caffeine))    
    if(caffeine(i) > (avgBigCups + (2 * stdBigCups)))
        disp('Excluded');
        disp(caffeine(i));
    else
        excluded(j) = caffeine(i);  
        j = j + 1;  
    end
end

hist(excluded, 50);
avgSmall = mean(excluded)
stdSmall = std(excluded)