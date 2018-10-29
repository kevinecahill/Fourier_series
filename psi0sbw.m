clear all
close all
clc
psix0s;
ts10;
%tc100;
plot(psi(:,1),psi(:,2),'k','linewidth',1)
hold on
plot(dix(:,1),dix(:,2),'k','linewidth',1)
%plot(cent(:,1),cent(:,2),'k--','linewidth',2)
fs = 14;
textx='$x$'
xlabel(textx,'Interpreter','latex','fontsize',fs)
texty='$\psi(x,0)$'
ylabel(texty,'Interpreter','latex','fontsize',fs)
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$Fourier Series of a Smooth Function'
%title(textt,'Interpreter','latex','fontsize',fs)
print -dpdf psi0smbw.pdf
print -dpdf ../psi0smbw.pdf
print -depsc psi0smbw.eps
print -depsc ../psi0smbw.eps
print -deps /Users/kevin/papers/math/psi0smbw