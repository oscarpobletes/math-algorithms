%ÓSCAR POBLETE SÁENZ
%Fixed point to find the approximate solution of a vector system
clc
clear

format long

%Initial conditions
x0=[0.1,0.1,-0.1]
x1=x0(1)
x2=x0(2)
x3=x0(3)


%Declare x1
x1n=1/3*cos(x2*x3)+1/6

%Declare x2
x2n=1/9*sqrt(x1^2+sin(x3)+1.06)-0.1

%Declare x3
x3n=-1/20*exp(-x1*x2)-(10*pi-3)/60

%Calculate infinity norm
x_1=[x1n;x2n;x3n]
dif_x1_x0=x_1-x0
infty_norm= max(abs(dif_x1_x0))


%Declare new x1
x1nn=1/3*cos(x2n*x3n)+1/6

%Declare new x2
x2nn=1/9*sqrt(x1n^2+sin(x3n)+1.06)-0.1

%Declare new x3
x3nn=-1/20*exp(-x1n*x2n)-(10*pi-3)/60