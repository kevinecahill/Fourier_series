clear all
close all
clc
fs = 14; sf = 16; 
om1 = 32; om2 = 30;
x = 0:.01:10;
plot(x,sin(om1*x) + sin(om2*x),'k-','linewidth',1)
%axis([0.8  2.9  0  6])
%grid 'on'
textt='$\!\!$Beats'
%title(textt,'Interpreter','latex','fontsize',sf)
textx='$x$'
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty=('$\sin \, (\omega_1 x) + \sin \, (\omega_2 x)$')
ylabel(texty,'Interpreter','latex','fontsize',sf)
print -dpdf beatsbw
print -deps beatsbw
print -deps /Users/kevin/papers/math/beatsbw