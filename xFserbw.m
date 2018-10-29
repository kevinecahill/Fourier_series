clear all
close all
clc
x0;
x10;
x100;
x1000;
subplot(2,1,1)
plot(x(:,1),x(:,2),'k','linewidth',1)
hold on
plot(dix(:,1),dix(:,2),'k.','linewidth',1)
plot(cent(:,1),cent(:,2),'k','linewidth',1)
%plot(mille(:,1),mille(:,2),'k--','linewidth',3)
fs = 16;
axis([-2*pi 2*pi -2*pi 2*pi])
textt1 = 'Fourier Series for the Aperiodic Function $x$'
title(textt1,'Interpreter','latex','fontsize',fs)
textx = '$x$'
xlabel(textx,'Interpreter','latex','fontsize',fs)
xlabel('\itx','fontsize',fs)
ylabel(textx,'Interpreter','latex','fontsize',fs)
subplot(2,1,2)
n = 252: 750;
plot(x(n,1),x(n,2) - dix(n,2),'k.','linewidth',1)
hold on
plot(x(n,1),x(n,2) - cent(n,2),'k','linewidth',1)
%plot(x(n,1),x(n,2) - mille(n,2),'k--','linewidth',1)
textt2 = 'Gibbs Overshoot for the Function $x$'
title(textt2,'Interpreter','latex','fontsize',fs)
textx = '$x$'
xlabel(textx,'Interpreter','latex','fontsize',fs)
texty2 = 'Overshoot'
ylabel(texty2,'Interpreter','latex','fontsize',fs)
axis([-pi, pi, -.6001, .6001])
print -dpdf  xFserbw
print -dpdf  ../xFserbw
print -depsc xFserbw