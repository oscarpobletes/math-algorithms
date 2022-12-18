%CLASE 17/08/21 ALGEBRA LINEAL AVANZADA
%OSCAR POBLETE SAENZ
clc
clear

%gf=galoisfield
%gfadd=galoisfield add
%Exercise 1 (ADDITION)
x_1=gfadd([1],[1],2)
x_2=gfadd([x_1],[1],2)
x_3=gfadd([x_2],[0],2)

% Exercise 2 (MULTIPLICATION THEN ADDITION)
y_1=gfconv([1],[1],2)
y_2=gfconv([0],[1],2)
y_3=gfconv([0],[0],2)
y_4=gfconv([1],[1],2)

z_1=gfadd([y_1],[y_2],2)
z_2=gfadd([z_1],[y_3],2)
z_1=gfadd([z_2],[y_4],2)

%Exercise 3 (ADDITION THEN MULTIPLICATION)
w_1=gfadd([1],[1],2)
w_2=gfadd([w_1],[1],2)

w_3=gfadd([1],[1],2)
w_4=gfadd([w_3],[1],2)
w_5=gfadd([w_4],[1],2)

resw=gfconv([w_1],[w_5],2)



