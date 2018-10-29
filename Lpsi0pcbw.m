clear all
close all
clc
psix0;
t10;
hundred;
plot(psi0(:,1),psi0(:,2),'k','linewidth',2)
hold on
plot(dix(:,1),dix(:,2),'k','linewidth',2)
plot(cent(:,1),cent(:,2),'k--','linewidth',2)
fs = 14;
textx = '$x$'
xlabel(textx,'Interpreter','latex','fontsize',fs)
texty = '$\psi(x,0)$'
ylabel(texty,'Interpreter','latex','fontsize',fs)
%textt = '$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$Fourier Series for a Piecewise Continuous Wave Function'
%title(textt,'Interpreter','latex','fontsize',fs)
print -dpdf psi0pcbw
print -dpdf ../psi0pcbw
print -depsc psi0pcbw
print -deps /Users/kevin/papers/math/psi0pcbw