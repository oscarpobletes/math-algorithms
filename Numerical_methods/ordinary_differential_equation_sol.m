%ÓSCAR POBLETE SÁENZ
%Solve differential equation

clc
clear
syms v(t) g m c %Symbols
ode=diff(v,t)==g-(c/m)*v %Define Ordinary Diferrential Equation
ySol(t)=dsolve(ode) %Solve ODE