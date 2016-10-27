close all;
clear all;
clc;

F = [3,7];
A = [2,5];
numChildren = 1000;
children(1) = 0;
pheno = [0,0,0,0];


for(i=1:1:numChildren)
  g1 = F(randi(1,2))*A(randi(1,2));
  g2 = F(randi(1,2))*A(randi(1,2));
  children(i) = g1*g2;
end

for(i=1:1:numel(children))
    if(mod(children(i),7)==0 & mod(children(i),5)==0)
        pheno(1) = pheno(1)+1;
    elseif(mod(children(i), 7)==0)
        pheno(2) = pheno(2)+1;
    elseif(mod(children(i), 5)==0)
        pheno(3) = pheno(3)+1;
    else
        pheno(4) = pheno(4)+1;
    end
end

pheno = nonzeros(pheno);
phenoProb = pheno/numChildren;


csvwrite('Di Phenotype Counts.csv', pheno);
csvwrite('Di Genotype.csv', children');
csvwrite('Di Phenotype Probability.csv', phenoProb);

disp('done');