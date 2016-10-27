function d = dragOriginal(v, t)
    
    if(t>60 & t<(60+3.2))
        d = -0.0865*((t-60)^3)+ 0.429*((t-60)^2) + (1/6);
    elseif(t>60+3.2)
        d = v*(5/3);
    else
        d = v*(1/6);
    end