%ÓSCAR POBLETE SÁENZ
%02/09/21
%SUM BINARY MATRICES
clc
clear
%Exercise 1:
a=[1,0,0;1,1,1]
b=[1,0,1;0,0,1]
gfadd(a,b,2)
%Exercise 2:
a=[1,0,1;1,1,0;0,1,0]
b=[0,0,1;1,0,0;1,1,1]
gfadd(a,b,2)
%BINARY MATRIX MULTIPICATION
%Exercise 1:
a=[1,1,0,1]
b=[1,0,1,1]%column
s=0
for i=1:1:4
    x=gfconv(a(i),b(i),2) 
    s=gfadd(x,s,2)
end
%Exercise 2:
a=[1,1,0;0,1,1]
b=[1,0,1]%column
s=0
for i=1:1:4
    x=gfconv(a(i),b(i),2)
    s=gfadd(x,s,2)
end

