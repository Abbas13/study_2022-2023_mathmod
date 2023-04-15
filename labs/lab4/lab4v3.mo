model lab4v3
parameter Real x0 = 1;
parameter Real y0 = 1;
parameter Real omega_sq = 1;
parameter Real thetta = 2;
Real x(start=x0);
Real y(start=y0);
equation
der(x) = y;
der(y) = -thetta*y - omega_sq * x + sin(2*time);
end lab4v3;