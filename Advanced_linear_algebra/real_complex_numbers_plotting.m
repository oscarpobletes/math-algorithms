%CLASS 08/12/21 ADVANCED LINEAR ALGEBRA
%OSCAR POBLETE SAENZ

clc %cleans screen
clear %cleans workspace
a=3+5*i
b=7+8i
% if set ; the result is not printed
c=a+b %complex number addition
%------------------------------A
magni=abs(a) %magnitude of complex numbers
ang=angle(a) %angle of complex numbers
i_a=imag(a) %imaginary part of a
r_a=real(a) %real part of a

%------------------------------B
magni=abs(b) %magnitude of complex numbers
ang=angle(b) %angle of complex numbers
i_b=imag(b) %imaginary part of b
r_b=real(b) %real part of b


%-----------------------------C
magni=abs(c) %magnitude of complex numbers
ang=angle(c) %angle of complex numbers
i_c=imag(c) %imaginary part of c
r_c=real(c) %real part of c
 
%Graph
plot(r_a,i_a,'g*',r_b,i_a,'kO',r_c,i_c,'bX')
grid on %activate the grid
axis ([0 15 0 15]) %spaces configuration
xlabel('Reales A') %x-axis name
ylabel('Imaginarios A') %y-axis name

%Exercise 1 operations
%a)
r1=conj(a)*(a+b) %conj=conjugate

%b)
r_2=(a+b)/(a-b)

%Other numbers (Exercise 2)
x=-3+7i
z=8+i

%a) 
inca=(x-conj(z))*(x+conj(z))

%b)
incb=z^2/conj(x)

%c)
incc=2*x*z/(x+z)

%plot line from a
plot([0,r_a],[0,i_a],'r','linewidth',6)
axis([0 15 0 15])
grid on
hold on
%plot line from b
plot([0,r_b],[0,r_a],'b','linewidth',6)
%plot point a
plot (r_a,i_a,'ok','linewidth',2','MarkerSize',20,'MarkerFaceColor','k')






