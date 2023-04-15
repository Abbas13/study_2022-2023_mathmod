model lab3v1
parameter Integer x_start = 25000;
parameter Integer y_start = 13000;
parameter Real a = -0.41;
parameter Real b = -0.83;
parameter Real c = -0.29;
parameter Real h = -0.63;
Real x(start=x_start);
Real y(start=y_start);
Real P;
Real Q;
equation
P = sin(time + 3);
Q = cos(time + 3);
der(x) = a*x + b*y + P;
der(y) = c*x + h*y + Q;
end lab3v1;