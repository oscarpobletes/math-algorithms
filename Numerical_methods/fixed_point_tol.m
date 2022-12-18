%ÓSCAR POBLETE SÁENZ
%Fixed point with tolerance
clc
clear
close
format long
vi = [0.1 0.1 -0.1];
x1(1) = vi(1);
x2(1) = vi(2);
x3(1) = vi(3);
I=[x1(1) x2(1) x3(1)]
A=I
tol = 0.00001
infty_norm= 0.5
n=2
while infty_norm>tol
    x1(n) = (1/3)*(cos(x2(n-1)*x3(n-1)))+1/6;
    x2(n) = (1/9)*sqrt(x1(n-1)^2+sin(x3(n-1))+1.06)-0.1;
    x3(n) = (-1/20)*exp(-x1(n-1)*x2(n-1))-((10*pi-3)/60);
    x=[x1(n) x2(n) x3(n)];
    A= cat(1,A,x);
    infty_norm(n)=(norm(A(n,:)-A(n-1,:),Inf));
    n= n+1;
end

for i=1:n-1
    F(i,:) = [i-1 A(i,1) A(i,2) A(i,3) infty_norm(i)];
end

disp("k     x1    x2    x3    infinity norm")
disp(F)
