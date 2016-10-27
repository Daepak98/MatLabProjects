function dV = deltaVOriginal(v,dt,t)
    g=9.8;
    dV = (g-dragOriginal(v,t))*dt;