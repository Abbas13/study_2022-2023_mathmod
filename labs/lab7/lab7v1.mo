model lab7v1
  constant Real a_1 = 0.65;
  constant Real a_2 = 0.0002;
  constant Integer N = 1000;
  constant Integer n0 = 2;
  Real n(time);
initial equation
  n = n0;
equation
  der(n) = (a_1 + a_2*n)*(N - n);
end lab7v1;