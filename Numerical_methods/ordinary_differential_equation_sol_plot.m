%ÓSCAR POBLETE SÁENZ
%Differential equation plot

clc
clear

t= linspace(0,50,100); %Linearly spaced vector
y=((9.81)*(68.1)/12.5)*(1-exp((-12.5/68.1)*t));

plot(t,y,'--g','LineWidth',2)
grid on
title('Differential equation sol')
xlabel('Time')
ylabel('Speed')

