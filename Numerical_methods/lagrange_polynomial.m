%ÓSCAR POBLETE SÁENZ
%Lagrange polynomial 
clc
clear
close
x = linspace(0,10); %Generation of linear space valuese
y1 = 1./x; %Function
plot(x,y1) %Graph
hold on %Keeps the current graph and y-axis 
grid on 

y2 = (1./22)*x.^2-(35./88).*x+(49./44); %Polynomial
plot(x,y2)

hold off

%Description of results:
% Thanks to this interpolation method, unknown intermediate values ​​could be estimated.

%Advantage:
%The main advantage of the Lagrange method is the simplicity of its implementation.
% Normally a polynomial is evaluated by a computer more
% easily than a function since only basic operations are needed,
% as multiplications and additions (for example trigonometric functions are
% very complicated to evaluate).
% Likewise, a polynomial can be easily derived and integrated and in this way we can
% get approximations of the derivative or integral of the original function,
% these can be very useful for programming methods.
