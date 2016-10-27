% airDensity function file to compute the approximate density
% of the air at any given altitude in the jump via linear interpolation
% d = d1 + (d2-d1)*(x-x1)/(x2-x1)
% d = density, x = altitude

function density = airDensity(x)
    if(x<610)
        x1=0;
        d1=1.29;
        x2=610;
        d2=1.216;
    elseif(x<1219)
        x1=610;
        d1=1.216;
        x2=1219;
        d2=1.146;
    elseif(x<1829)
        x1=1219;
        d1=1.146;
        x2=1829;
        d2=1.078;
    elseif(x<2438)
        x1=1829;
        d1=1.078;
        x2=2438;
        d2=1.014;
    elseif(x<3048)
        x1=2438;
        d1=1.014;
        x2=3048;
        d2=0.952;
    elseif(x<3658)
        x1=3048;
        d1=0.952;
        x2=3658;
        d2=0.894;
    else
        x1=3658;
        d1=0.894;
        x2=4267;
        d2=0.839;
    end

    density = d1 + (d2-d1)*(x-x1)/(x2-x1);