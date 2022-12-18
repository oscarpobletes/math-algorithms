%ÓSCAR POBLETE SÁENZ
%31/08/21
%Eigenvalues 
clc
clear

%Exercise 1:
A=[4,2;3,3]
a_i=eig(A) %lambda

% v=eigenvectors D=eigenvalues
[v,D]=eig(A) 

% eye(2) 2x2 identity matrix
% v(:,1) all rows col one
% v(:,2) all rows col two
c=(A-6*eye(2))*v(:,1)

%Exercise 2:
B=[2,-1;-4,2]
b_i=eig(B)
[v,D]=eig(B) 
d=(B-4*eye(2))*v(:,1)

%To do:
C=[39,-95,55;35,-92,55;35,-95,58]
D=[-2,3]
V=[1,3,4;1,4,9;1,5,13]
%x
x=(C-D(1,1)*eye(3))*V(:,1)
%y
y=(C-D(1,2)*eye(3))*V(:,2)
%z
z=(C-D(1,2)*eye(3))*V(:,3)