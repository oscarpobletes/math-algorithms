%The demonstration will illustrate the geometry of the commutative and associative properties of vector addition 
% and of the distributive property of multiplication by a scalar over vector addition.
clc % cleans screen
clear % cleans workspace
close % close figures
function vctrsp(x,y,z,a)
% VCTRSP function illustrating geometric properties
% commutativity and associativity of vector addition.
% Also the distributive property of multiplication
% for a scalar of vector addition
%
%x: 2x1 vector
%y: 2x1 vector
%z: 2x1 vector
% a: scalar
x=[3;0]
y=[2;2]
z=[-2;4]
a=0.5
% Initialization of data used in the function
origin=[0;0];Ox=[origin,x];Oy=[origin,y];Oz=[origin,z];
xy=[x,y+x];yx=[y,x+y];yz=[y,y+z];
Oyz=[origin,y+z];Oxy=[origin,x+y];
xyMz=[x+y,x+y+z];yzMx=[y+z,x+y+z];Oxyz=[origin,x+y+z];
% Clear command window and close all windows
% of open figures
clc;
disp('VCTRSP function')
disp(' ')
close all;
% Commutativity
figure(1)
hold off
subplot(121)
h=plot(Ox(1,:),Ox(2,:),'b--*',Oy(1,:),Oy(2,:),'b--*');
set(h,'LineWidth',2)
text(x(1)/2,x(2)/2,'\bf x');
text(y(1)/2,y(2)/2,'\bf y');
grid
axis square
axis tight
aa=axis;
axis([min(aa([1,3]))-1,max(aa([2,4]))+1,...
min(aa([1,3]))-1,max(aa([2,4]))+1])
title('Original vectors')
subplot(122)
hold off
h=plot(Ox(1,:),Ox(2,:),'b--*',Oy(1,:),Oy(2,:),'b--*');
set(h,'LineWidth',2)
hold on
h=plot(Ox(1,:),Ox(2,:),'r:',xy(1,:),xy(2,:),'r:',...
Oxy(1,:),Oxy (2,:),'-m*');
set(h,'LineWidth',2)
h=plot(Oy(1,:),Oy(2,:),'g:',yx(1,:),yx(2,:),'g:',...
Oxy(1,:),Oxy(2,:),'-m*');
set(h,'LineWidth',2)
text(x(1)/2,x(2)/2,'\bf x');
text(y(1)/2,y(2)/2,'\bf y');
text(xy(1,2)/2,xy(2,2)/2,'\bf x+y=y+x')
grid
axis square
axis tight
aa=axis;
axis([min(aa([1,3]))-1,max(aa([2,4]))+1,...
min(aa([1,3]))-1,max(aa([2,4]))+1])
title('Vector addition, commutativity')
hold off
disp('Press any key to continue figure 2');
pause;
% Associativity
figure(2)
hold off
subplot(131)
h=plot(Ox(1,:),Ox(2,:),'b--*',Oy(1,:),Oy(2,:),'b--*',...
Oz(1,:), Oz(2,:),'b--*');
set(h,'LineWidth',2)
text(x(1)/2,x(2)/2,'\bf x');
text(y(1)/2,y(2)/2,'\bf y');
text(z(1)/2,z(2)/2,'\bf z');
grid
axis square
axis tight
aa=axis;
axis([min(aa([1,3]))-1,max(aa([2,4]))+1,min(aa([1,3]))-1,...
max(aa([2,4]))+1])
title('Original vectors')
subplot(132)
hold off
h=plot(Ox(1,:),Ox(2,:),'b--*',Oy(1,:),Oy(2,:),...
'b--*',Oz(1,:),Oz(2,:),'b--*');
set(h,'LineWidth',2)
hold on
h=plot(Ox(1,:),Ox(2,:),'r:',xy(1,:),xy(2,:),'r:',Oxy(1,:),...
Oxy(2,:),'-m*');
set(h,'LineWidth',2)
h=plot(Oxy(1,:),Oxy(2,:),':g*',xyMz(1,:),xyMz(2,:),':m*');
set(h,'LineWidth',2)
h=plot(Oxyz(1,:),Oxyz(2,:),'--c*');
set(h,'LineWidth',2)
text(x(1)/2,x(2)/2,'\bf x');
text(y(1)/2,y(2)/2,'\bf y');
text(z(1)/2,z(2)/2,'\bf z');
text(xy(1,2)/2,xy(2,2)/2,'\bf x+y')
text(xyMz(1,2)/2,xyMz(2,2)/2,'\bf (x+y)+z')
grid
axis square
axis tight
aa=axis;
axis([min(aa([1,3]))-1,max(aa([2,4]))+1,...
min(aa([1,3]))-1, max(aa([2,4]))+1])
title('Vector addition, (x+y)+z')
hold off
subplot(133)
hold off
h=plot(Ox(1,:),Ox(2,:),'b--*',Oy(1,:),Oy(2,:),...
'b--*', Oz(1,:),Oz(2,:),'b--*');
set(h,'LineWidth',2)
hold on
h=plot(Oy(1,:),Oy(2,:),'r:',yz(1,:),yz(2,:),'r:',Oyz(1,:),...
Oyz(2,:),'-m*');
set(h,'LineWidth',2)
h=plot(Oyz(1,:),Oyz(2,:),':g*',yzMx(1,:),yzMx(2,:),':m*');
set(h,'LineWidth',2)
h=plot(Oxyz(1,:),Oxyz(2,:),'--c*');
set(h,'LineWidth',2)
text(x(1)/2,x(2)/2,'\bf x');
text(y(1)/2,y(2)/2,'\bf y');
text(z(1)/2,z(2)/2,'\bf z');
text(yz(1,2)/2,yz(2,2)/2,'\bf y+z')
text(yzMx(1,2)/2,yzMx(2,2)/2,'\bf x+(y+z)')
grid
axis square
axis tight
aa=axis;
axis([min(aa([1,3]))-1,max(aa([2,4]))+1,min(aa([1,3]))-1,...
max(aa([2,4]))+1])
title('Vector addition, x+(y+z)')
hold off
disp('Press any key to continue figure 3');
pause;
% Distributability of scalar multiplication over vector addition
figure(3)
hold off
subplot(131)
h=plot(Ox(1,:),Ox(2,:),'b--*',Oy(1,:),Oy(2,:),'b--*');
set(h,'LineWidth',2)
text(x(1)/2,x(2)/2,'\bf x');
text(y(1)/2,y(2)/2,'\bf y');
grid
axis square
axis tight
aa=axis;
axis([min(aa([1,3]))-1,max(aa([2,4]))+1,...
min(aa([1,3]))-1,max(aa([2,4]))+1])
title('Original vectors')
subplot(132)
hold off
h=plot(Ox(1,:),Ox(2,:),'b--*',Oy(1,:),Oy(2,:),'b--*');
set(h,'LineWidth',2)
hold on
h=plot(Ox(1,:),Ox(2,:),'r:',xy(1,:),xy(2,:),'r:',...
Oxy(1,:)*a,Oxy(2,:)*a,'-m*');
set(h,'LineWidth',2)
text(x(1)/2,x(2)/2,'\bf x');
text(y(1)/2,y(2)/2,'\bf y');
text(xy(1,2)/2*a,xy(2,2)/2*a,'\bf a(x+y)')
grid
axis square
axis tight
aa=axis;
axis([min(aa([1,3]))-1,max(aa([2,4]))+1,...
min(aa([1,3]))-1,max(aa([2,4]))+1])
title('Vector addition, a(x+y)')
hold off
subplot(133)
hold off
h=plot(Ox(1,:)*a,Ox(2,:)*a,'b--*',Oy(1,:)*a,Oy(2,:)*a,'b--*');
set(h,'LineWidth',2)
hold on
h=plot(Ox(1,:),Ox(2,:)*a,'r:',xy(1,:)*a,xy(2,:)*a,'r:',...
Oxy(1,:)*a,Oxy(2,:)*a,'-m*');
set(h,'LineWidth',2)
text(x(1)/2,x(2)/2*a,'\bf x');
text(y(1)/2,y(2)/2*a,'\bf y');
text(xy(1,2)/2*a,xy(2,2)/2*a,'\bf a(x+y)')
grid
axis square
axis tight
aa=axis;
axis([min(aa([1,3]))-1,max(aa([2,4]))+1,...
min(aa([1,3]))-1,max(aa([2,4]))+1])
title('Vector addition, ax+ay')
hold off
