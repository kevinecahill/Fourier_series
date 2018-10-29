clear all
close all
clc
x=-pi:0.01:pi
plot(x,x.^2,'k-','linewidth',2)
hold on
s10 = pi^2/3;
for n = 1:7
   s10 = s10 + 4*(-1)^n*cos(n*x)/n^2
end
s100 = pi^2/3;
for n = 1:20
   s100 = s100 + 4*(-1)^n*cos(n*x)/n^2
end    
plot(x,s10,'k-.','linewidth',2)
plot(x,s100,'k--','linewidth',2)
axis([-1 1 -0.1 1.0])
fs = 16;
textx = '$x$';
texty = '$x^2$'
textt = 'Fourier Series for $x^2$'
xlabel(textx,'Interpreter','latex','fontsize',fs)
ylabel(texty,'Interpreter','latex','fontsize',fs)
%title(textt,'Interpreter','latex','fontsize',fs)
print -dpdf  xsquaredbw
print -depsc xsquaredbw
print -deps /Users/kevin/papers/math/xsquaredbw