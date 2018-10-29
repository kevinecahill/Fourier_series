clear all
close all
clc
exp0;
exp10;
%exp100;
plot(exp(:,1),exp(:,2),'k','linewidth',2)
hold on
plot(dix(:,1),dix(:,2),'k--','linewidth',2)
%plot(cent(:,1),cent(:,2),'k--','linewidth',2)
axis([-2*pi 2*pi -0.1 1.1])
fs = 16;
textx = '$x$';
texty = '$e^{-2|x|}$'
textt = 'Fourier Series for $e^{-2|x|}$'
xlabel(textx,'Interpreter','latex','fontsize',fs)
ylabel(texty,'Interpreter','latex','fontsize',fs)
title(textt,'Interpreter','latex','fontsize',fs)
print -dpdf  expFserbw
print -dpdf  ../expFserbw
print -depsc expFserbw