model lab5v2
parameter Real a = 0.13;
parameter Real b = 0.042;
parameter Real c = 0.33;
parameter Real d = 0.03;
Real x(start=c/d);
Real y(start=a/b);
equation
der(x) = -a*x + b*x*y;
der(y) = c*y -d*x*y;
end lab5v2;