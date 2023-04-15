model labv2
  constant Real alfa = 0.8;
  constant Real betta = 0.2;
  constant Integer N = 25000;
  constant Integer Ik = 50;
  Real S(time);
  Real I(time);
  Real R(time);
initial equation
  I = 150;
  R = 15;
  S = N - I - R;
equation
  if I > Ik then
    der(S) = -alfa*S;
    der(I) = alfa*S - betta*I;
  else 
    der(S) = 0;
    der(I) = -betta*I;
  end if;
  der(R) = betta*I;
end labv2;