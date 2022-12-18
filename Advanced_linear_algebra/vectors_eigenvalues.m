%ÓSCAR POBLETE SÁENZ
%Calculating eigenvectors and eigenvalues
clc
clear

%2x2
A=[1,1;-2,4]

[eigen_vec, eigen_val]=eig(A)
p=eigen_vec

%SIMILARITY CHECK
%A matrix B is said to be similar to a matrix A if there is a non-singular matrix
%P such that B=P^−1AP.
%Additionally, a matrix is ​​invertible or non-singular if its inverse exists.
B=inv(p)*A*p

%3x3
A=[1,1,2;-2,4,5;1,5,7]

[eigen_vec, eigen_val]=eig(A)
p=eigen_vec

%SIMILARITY CHECK
%A matrix B is said to be similar to a matrix A if there is a non-singular matrix
%P such that B=P^−1AP.
%Additionally, a matrix is ​​invertible or non-singular if its inverse exists.
B=inv(p)*A*p