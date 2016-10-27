close all;
clear all;
clc;

numChildren = 2000;


for(i=1:1:numChildren)
  children(i) = randi(2, 3)*;
end

counts = nonzeros(hist(children));
probablilities = counts/numChildren;

csvwrite('Genotypes.csv', children');
csvwrite('Genotype Counts.csv', counts);
csvwrite('Probabilities of Genotypes.csv', probablilities);
disp('Done');