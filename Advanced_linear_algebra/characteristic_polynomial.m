%ÓSCAR POBLETE SÁENZ
%20/09/21
%Characteristic polynomial
clc 
clear

%2X2
S=[2,3;4,1]
I=eye(2) %Identity Matrix
syms x;
res_a=det(S-I*x) %Polynomial result
%3X3
S=[1,3,0;...
5,1,9;...
8,0,1]
I=eye(3) %Identity Matrix
syms x;
res_b=det(S-I*x) %Polynomial result