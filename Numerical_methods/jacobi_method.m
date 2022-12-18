%ÓSCAR POBLETE SÁENZ
%Jacobi Method
clc
clear
format long

x1=0.1;
x2=0.1;
x3=-0.1;
% Functions
f1=3*x1-cos(x2*x3)-1/2
f2=x1^2-81*(x2+0.1)^2+sin(x3)+1.06
f3=exp(-x1*x2)+20*x3+(10*pi-3)/3

syms x1 x2 x3
% Jacobian
J=jacobian([3*x1-cos(x2*x3)-1/2,x1^2-81*(x2+0.1)^2+sin(x3)+1.06,exp(-x1*x2)+20*x3+(10*pi-3)/3],[x1,x2,x3])
% Evaluate Jacobian
Jx0=subs(J, [x1 x2 x3], [0.1 0.1 -0.1])
% Inverse of evaluated Jacobian
Jx0inv=inv(Jx0)

% FX values
FX=[f1; f2; f3]

% Getting y
y=Jx0inv*(-FX)

% Decimal values
vpa(y)
