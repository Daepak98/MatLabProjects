function sol = quadForm(a,b,c)
    numerator1 = -b + sqrt(b^2 - 4*a*c);
    numerator2 = -b - sqrt(b^2 - 4*a*c);
    denominator = 2*a;
    sol = [numerator1/denominator numerator2/denominator];