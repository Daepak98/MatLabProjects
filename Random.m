%Roll Two Die
%Deepak Warrier

close all;
clear all;
clc;

x=100;
disp(' ');
for(i=1:1:x)
    y=randi(1,4);
    switch y
        case 1
            disp('A');
            disp(' ');
        case 2
            disp('B');
            disp(' ');
        case 3
            disp('C');
            disp(' ');
        case 4
            disp('D');
            disp(' ');
        otherwise
            disp('U Screwed Mate');
            disp(' ');
    end
    pause(.5);
end