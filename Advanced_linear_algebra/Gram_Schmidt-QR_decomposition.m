%ÓSCAR POBLETE SÁENZ
%23/09/21
%Gram-Schmidt procedure
clc
clear

%Enter the values
v1=[1,1,0];
v2=[0,1,1];
v3=[1,0,1];
%Step 1 get the norm and the unit vector
n1=norm(v1);
u1=v1/n1;
%Step2 orthogonal vector
v2p=v2-(dot(v2,u1))*u1;
%Step 3 second unit vector and orthogonal to u1
n2=norm(v2p);
u2=v2p/n2;
%Step 4 calculate a vector to u1 and u2
v3p=v3-(dot(v3,u1))*u1-(dot(v3,u2))*u2;
%Step 5 choice of a third unit vector orthogonal to u1 and u2
n3=norm(v3p);
u3=v3p/n3;

% Review exercise:
%In R3 using as base (1,0,-2),(0,2,1),(-1,1,0)
%Enter the values
v1=[1,-1,1]
v2=[-2,3,-1]
v3=[1,2,-4]
%Paso 1 obtener la norma y el vector unitario
n1=norm(v1)
u1=v1/n1
%Step2 orthogonal vector
v2p=v2-(dot(v2,u1))*u1 %dot= dot product
%Step 3 second unit vector and orthogonal to u1
n2=norm(v2p)
u2=v2p/n2
%Step 4 calculate a vector to u1 and u2
v3p=v3-(dot(v3,u1))*u1-(dot(v3,u2))*u2
%Step 5 choice of a third unit vector orthogonal to u1 and u2
n3=norm(v3p)
u3=v3p/n3
% Norms of u1, u2 and u3
nu1=norm(u1)
nu2=norm(u2)
nu3=norm(u3) %To verify that they are orthonormal ||N||=1
%Dot product
pp1=dot(u1,u2)
pp2=dot(u1,u3)
pp3=dot(u3,u2) %When the exponent e^-n==X10-^n is very large, it is practically 0, therefore it is orthogonal
%QR Factoring
u1t=u1' %' transposed
u2t=u2'
u3t=u3'
Q=[u1t,u2t,u3t] %Must be an orthonormal matrix (checked with pp1,2,3)
%Form matrix A
A=[v1',v2',v3']
%R calculation
R=Q'*A %Must be upper triangular matrix
%Verification
a2=Q*R

