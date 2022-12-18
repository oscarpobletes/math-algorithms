%ÓSCAR POBLETE SÁENZ
%14/09/21
clc
clear

%1. Vectors in R3
% EXERCISE 1 ORTHOGONALIZATION
u=[3,2,-4]
v=[2,-3,4]

c=dot(u,v) % non-orthogonal !=0

% EXERCISE 2 ORTHOGONALIZATION
u=[-1,0,0]
v=[0,0,-1]
c=dot(u,v) %orthogonal ==0


% EXERCISE 3 ORTHOGONALIZATION
u=[-2/3,1/2,1]
v=[1/2,2/3,0]

c=dot(u,v) %orthogonal

% EXERCISE 4 ORTHOGONALIZATION
u=[0,-5,0]
v=[4,1,0]

c=dot(u,v) %non-orthogonal

% EXERCISE 5 ORTHOGONALIZATION
u=[1,2;0,2]
v=[0,0;0,0]
w=[2,0;0,-1]

c_1=dot(u,v)
c_2=dot(u,w) % 2 and -2 gives 0 so it is orthogonal
c_3=dot(v,w) 

