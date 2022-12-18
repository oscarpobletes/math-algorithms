%ÓSCAR POBLETE SÁENZ
%Division algorithm a-bq

clc %screen
clear %workspace
%Declare a and b
a=540;
b=168;
%Calculate integer part
q=fix(a/b) %fix=int with 32 bits
%Calculate remainder of division
r=a-b*q
r1=abs(r)
