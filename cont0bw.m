clear all
close all
clc
psi0c;
tc10;
%tc100;
plot(psi(:,1),psi(:,2),'k','linewidth',2)
hold on
plot(dix(:,1),dix(:,2),'k--','linewidth',2)
%plot(cent(:,1),cent(:,2),'k--','linewidth',2)
fs = 16;
textx='$x$'
xlabel(textx,'Interpreter','latex','fontsize',fs)
texty='$\psi(x,0)$'
ylabel(texty,'Interpreter','latex','fontsize',fs)
textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$Fourier Series of a Continuous Function'
title(textt,'Interpreter','latex','fontsize',fs)
print -dpdf Cont0
print -dpdf ../Cont0
print -depsc Cont0