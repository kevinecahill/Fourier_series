clear all
close all
clc
P0c;
%P1000thc;
P100thc
P10thc
P1c;
P10c;
P100c;
plot(psi0(:,1),psi0(:,2),'k','linewidth',3.5)
hold on
%plot(millieme(:,1),millieme(:,2),'k','linewidth',3)
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
textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$Probability Distribution of a Continuous Wave Function'
title(textt,'Interpreter','latex','fontsize',fs)
print -dpdf psitcbw
print -dpdf ../psitcbw
print -depsc psitcbw