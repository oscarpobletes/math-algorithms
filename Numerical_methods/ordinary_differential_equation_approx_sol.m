%ÓSCAR POBLETE SÁENZ
%DE approximate sol. and plot with for loop

clc
clear
close
vn1=[];
va=0;
t1=0;
x=1

%Doing iterations
for t=0:2:50
    vn=va+(9.81-(12.5/68.1)*va)*(t-t1) 
        t1=t;
        va=vn;
        vn1(x)=vn %Saving values on array
        x=x+1
end

%Now we are going to plot from 0 to 10

t=linspace(0,50,26); %26 is the length of vn1
plot(t,vn1)