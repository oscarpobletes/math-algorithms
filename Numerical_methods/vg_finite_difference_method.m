%ÓSCAR POBLETE SÁENZ
%Velocity gradient with finite difference method (FDM)

clc
clear
ti=0 %initial time
tf=2 %final time
dt=tf-ti %change
ps=0 %previous speed
ns=ps+(9.81-(12.5/68.1)*ps)*dt %new speed