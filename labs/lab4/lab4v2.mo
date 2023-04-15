model lab4v2
parameter Real x0 = 1;
parameter Real y0 = 1;
parameter Real omega_sq = 4;
parameter Real thetta = 1;
Real x(start=x0);
Real y(start=y0);
equation
der(x) = y;
der(y) = -thetta*y - omega_sq * x;
end lab4v2;