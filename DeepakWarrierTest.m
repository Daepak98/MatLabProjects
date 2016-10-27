%Mat #1
%Spetember 2, 2016
%Deepak Warrier

clc;
clear;
close all;

disp('Problem:1')

prob1a=(24+4.5^3)/((e^4.4)-log10(12560))
prob1b=(2/.036)*(((250^.5)-(-10.5)^2)/(e^-.2))

disp('-->Problem:2')

LHSa = (sin(.75*pi))^2+(cos(.75*pi))^2;
RHSa = 1;
disp(LHSa - RHSa)

LHSb = (12.3^2)-((-21)^2)
RHSb = (12.3+21)*(12.3-21)
disp(LHSb-RHSb)

disp('-->Problem:3')
disp(' ')
disp('Countdown commencing')
disp('Ignition in...')
for(i=3:-1:1)
    disp(i)
    %pause(1)
end
disp('BLAST OFF!!!')
disp(' ')

disp('-->Problem:4')
disp(ceil (634/12))

disp(' ')
disp('-->Problem:5')
proba=(log(20))/(log(8))
probb=(log10(4))

disp('-->Problem:6')
    x = 3
    y = 5
    log(y)/log(x)
    
    x = 4
    y = 1
    log(y)/log(x)
