function x = test_sparse29
a = [1,0,3,4,5;6,2,3,5,0;0,0,0,0,2];
A = sparse(a);
p = [3;4;5;9;10;20];
a(p) = [4,6,8,0,3,7];
A(p) = [4,6,8,0,3,7];
x = testeq(a,A);
