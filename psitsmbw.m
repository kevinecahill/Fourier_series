clear all
close all
clc
P0s;
P100ths;
P10ths;
P1s;
P10s;
P100s;
plot(psi0(:,1),psi0(:,2),'k','linewidth',3.5)
hold on
plot(centieme(:,1),centieme(:,2),'k','linewidth',3)
plot(dixieme(:,1),dixieme(:,2),'k','linewidth',2.5)
plot(un(:,1),un(:,2),'k','linewidth',2)
plot(dix(:,1),dix(:,2),'k','linewidth',1.5)
plot(cent(:,1),cent(:,2),'k','linewidth',1)
fs = 16;
textx='$x$'
xlabel(textx,'Interpreter','latex','fontsize',fs)
texty='$|\psi(x,t)|^2$'
ylabel(texty,'Interpreter','latex','fontsize',fs)
textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$Probability Distribution of a Smooth Wave Function'
title(textt,'Interpreter','latex','fontsize',fs)
print -dpdf psitsmbw
print -dpdf ../psitsmbw
print -depsc psitsmbw
print -depsc ../psitsmbw