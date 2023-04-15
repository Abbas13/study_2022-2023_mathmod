model lab3v2
parameter Integer x_start = 25000;
parameter Integer y_start = 13000;
parameter Real a = -0.33;
parameter Real b = -0.88;
parameter Real c = -0.44;
parameter Real h = -0.77;
Real x(start=x_start);
Real y(start=y_start);
Real P;
Real Q;
equation
P = sin(time);
Q = cos(3*time);
der(x) = a*x + b*y + P;
der(y) = c*x*y + h*y + Q;
end lab3v2;