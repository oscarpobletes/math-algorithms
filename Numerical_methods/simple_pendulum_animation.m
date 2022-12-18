%ÓSCAR POBLETE SÁENZ
clc
close all

%Declare pendulum variables
m1=1; %mass
l1=0.5; %longitude 
g=9.81; %gravity

%Simulink data into workspace
q=out.q;

for i=1:length(q)
   %First mass position
   x1= l1*sin(q(i,2));
  y1=-l1*cos(q(i,2));
    plot(0,0,':ob','LineWidth',2,'MarkerSize',10),xlabel('X'),ylabel('Y'), title('Simple pendulum'),grid on
    %Axis specifications
    axis([-2.2 2.2 -2.2 2.2])
    %Add title
    title('SIMPLE PENDULUM')
    hold on
    %Plot first mass
    plot(l1*sin(q(i,2)),-l1*cos(q(i,2)),'ok','LineWidth',2,'MarkerSize',10,'MarkerFaceColor','k')
    %Plot first bar
    plot([0, x1], [0 y1],'r','LineWidth',6)
    hold off
    pause(1e-1)
end



