clear all
close all
clc
P0; P1; P1000th;
plot(psi0(:,1),psi0(:,2),'k','linewidth',2.5)
hold on
plot(mille(:,1),mille(:,2),'k','linewidth',1.5)
plot(un(:,1),un(:,2),'k','linewidth',.75)
fs = 14;
textx = '$x$'
xlabel(textx,'Interpreter','latex','fontsize',fs)
texty='$|\psi(x,t)|^2$'
ylabel(texty,'Interpreter','latex','fontsize',fs)
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!|\psi(x,t)|^2$ for a Piecewise Continuous Wave Function'
%title(textt,'Interpreter','latex','fontsize',fs)
print -dpdf psitpcbw
print -dpdf ../psitpcbw
print -depsc psitpcbw
print -deps /Users/kevin/papers/math/psitpcbw