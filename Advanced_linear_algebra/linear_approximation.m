% Least Squares Approximations
%Minimize vertical distances
%ÓSCAR POBLETE SÁENZ
%30/09/21
clc
clear
A=[1,1;1,-2;1,3;1,4] %x points
At=A'
y=[4;5;-1;1] %y points
U=inv(A'*A)*A'*y %Linear aproximation