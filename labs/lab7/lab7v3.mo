model lab7v3
  constant Real a_1 = 0.1;
  constant Real a_2 = 0.2;
  constant Integer N = 1000;
  constant Integer n0 = 2;
  Real n(time);
initial equation
  n = n0;
equation
  der(n) = (a_1 * sin(2*time) + a_2* cos(3*time)*n)*(N - n);
end lab7v3;