%ÓSCAR POBLETE SÁENZ
%Rotations plotting
%26/08/21
clc
clear
close
v=[7;7]
theta=(3/2)*pi
A0=[cos(theta),-sin(theta)...
    sin(theta),cos(theta)]
vr=A0.*v
%Graph the complex number a
plot(v(1),v(2),'ro',vr(1),vr(2),'bo')
grid on
axis([-15 15 -15 15])
xlabel('axis of real numbers')
ylabel('axis of complex numbers')