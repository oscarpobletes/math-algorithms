%ÓSCAR POBLETE SÁENZ
%calculate the inverse of a 2x2 matrix

clc
clear
%Declare matriz of 2x2 and calculate det
A=[2,3;4,5]
tic
c_det=A(1,1)*A(2,2)-A(2,1)*A(1,2)
A1=[A(2,2) -A(1,2);-A(2,1) A(1,1)]
res=1/(c_det)*A1
toc
%comprobation to compare MATLAB function vs own function
tic
inv(A)
toc
%we can see that our own function is faster than the MATLAB inv() funciton