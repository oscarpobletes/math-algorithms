%ÓSCAR POBLETE SÁENZ
%Bisection method
clc
clear
close 
%Declare the limit of the intervals "a","b"
a=1;
b=2;
%Calculate the value of the midpoint
pm1=(a+b)

%Declare function
x=pm1

%Calculate the value of the function that should be close to zero
f=x^3+4*x^2-10

%Comparison with the established error
f>0.001

%Calculate the value of f(a) that is f(1)
x=1
f1=x^3+4*x^2-10

%Calculate the sign of f(a)**f(pm1)
calc_signo=f*f1

%---------------------------------
%Go through the interval
a=a
b=pm1

%Calculate the new midpoint
pm2=(a+b)/2

%Declare function
x=pm2

%Calculate the value of the function that should be close to zero
f=x^3+4*x^2-10

%Compare with the established error
f>0.001

%Calculate the value of f(a) that is f(1)
x=1
f1=x^3+4*x^2-10

%Calculate the sign of f(a)**f(pm1)
calc_sign=f*f1

%--------------
%Go trough the interval
a=a
b=pm2