%ÓSCAR POBLETE SÁENZ
%28/09/21
%LU DECOMPOSITION
clc
clear

A=[ 3,-1,4,-1;...
    -1,-1,3,1;...
    2,3,-1,-1;...
    7,1,1,2]

%Calculation of the first column of L
L_11=A(1,1)
L_21=A(2,1)
L_31=A(3,1)
L_41=A(4,1)

%U calculation
U_12=A(1,2)/L_11
U_13=A(1,3)/L_11
U_14=A(1,4)/L_11

%Second column of L
L_22=A(2,2)-(L_21*U_12)
L_32=A(3,2)-(L_31*U_12)
L_42=A(4,2)-(L_41*U_12)

%Second line of U
U_23=(A(2,3)-(L_21*U_13))/L_22
U_24=(A(2,4)-(L_21*U_14))/L_22

%Third column of L
L_33=A(3,3)-(L_31*U_13+L_32*U_23)
L_43=A(4,3)-(L_41*U_13+L_42*U_23)

%Third row of U
U_34=(A(3,4)-(L_31*U_14+L_32*U_24))/L_33

%Third row of L
L_44=A(4,4)-(L_41*U_14+L_42*U_24+L_43*U_34)

%Accommodate L
L=[L_11,0,0,0;...
    L_21,L_22,0,0;...
    L_31,L_32,L_33,0;...
    L_41,L_42,L_43,L_44]
%Accommodate U
U=[1,U_12,U_13,U_14;...
   0,1,U_23,U_24;...
   0,0,1,U_34;...
   0,0,0,1]
%Check A=L*U
ChecarA=L*U

%LU Applications
B=[10;5;1;-20]%Vector
b1p=B(1)/L_11
b2p=(B(2)-L_21*b1p)/L_22
b3p=(B(3)-(L_31*b1p+L_32*b2p))/L_33
b4p=(B(4)-(L_41*b1p+L_42*b2p+L_43*b3p))/L_44

bp=[b1p;b2p;b3p;b4p] %vector

x4=b4p
x3=b3p-U_34*b4p
x2=b2p-(U_24*b4p+U_23*x3)
x1=b1p-(U_14*b4p+U_13*x3+U_12*x2)

%Check must be equal to B
Xs=[x1;x2;x3;x4]
comprobacion=A*Xs
