model lab4v1
parameter Real x0 = 1;
parameter Real y0 = 1;
parameter Real omega_sq = 3;
Real x(start=x0);
Real y(start=y0);
equation
der(x) = y;
der(y) = -omega_sq * x;
end lab4v1;