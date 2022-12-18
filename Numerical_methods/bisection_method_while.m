%ÓSCAR POBLETE SÁENZ
%Bisection method with while loop
clc
clear
%Declare the limits of the intervals "a" and "b"
a=1;
b=2;
condition=true;
while condition==true
    %Calculate the value of the midpoint
    pm=(a+b)/2
    %Declare function
    x=pm
    %Calculate the value of the function that should be close to zero
    f=x^3+4*x^2-10
    %Compare with the established error
    cond=abs(f)>0.0001
    condition=cond;
     %Calculate the value of f(a) that is f(1)
     x=a
     f1=x^3+4*x^2-10
     %Calculate error
     error=(abs(f1-f))
     %Calculate the sign of f(a)*f(pm1)
     calc_sign=f*f1;
     if calc_sign<0
         b=pm;
     else a=pm;
     end
end