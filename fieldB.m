function [B] = fieldB(X)
i0=2; % A
beta=3e-4; % T/A
xi=-0.05; xf=0.07; % m
B0=i0*beta; % T

B(1)=0; B(2)=0; B(3)=0;
if ( (X(1) >= xi) && (X(1) <= xf) )
  B(3)=B0;
end
%