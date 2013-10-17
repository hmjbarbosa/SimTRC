function [E] = fieldE(X) 
Vp=15; % V
d=3e-3; % m
xi=0.; xf=0.02; % m
E0=Vp/d;

E(1)=0; E(2)=0; E(3)=0;
if ( (X(1) >= xi) && (X(1) <= xf) )
  E(2)=E0;
end
%