%Roll Two Die
%Deepak Warrier

close all;
clear all;
clc;


count=0;
count26=0;

for(i = 1:1:100000)
    rollOne = randi(1, 6);
    rollTwo = randi(1,6);
    if(rollOne==6 | rollTwo==6)
        count=count+1;
    end
    if(rollOne+rollTwo==12)
        count26=count26+1;
    end
end
disp(count26/count);    
        