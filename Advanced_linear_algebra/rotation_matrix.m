%ÓSCAR POBLETE SÁENZ
%A rotation matrix is ​​the matrix that represents a rotation in Euclidean space.
clc
clear

%Matrix Rx
syms alpha
Rx=[1,0,0;
0, cos(alpha), -sin(alpha)
   0, sin(alpha), cos(alpha)]

%Matrix Ry
syms theta
Ry=[cos(theta),0,sin(theta);
    0,1,0;
    -sin(theta),0,cos(theta)]

%Matrix Rz
syms phi 
Rz=[cos(phi), -sin(phi), 0;
    sin(phi), cos(phi),0;
    0, 0, 1]



