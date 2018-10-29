clear all
close all
clc
x = -15:0.00001:15; sf = 14;
y = 1/(2*pi);
for k = 1: 100000
    y = y + cos(k.*x);
end
y = y/pi;
plot(x,y,'linewidth',0.01)
0.000010*sum(y)
%axis( [ -1  1  -1000  3500 ] );
textx='$x$'
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty='Sum of cosine series'
ylabel(texty,'Interpreter','latex','fontsize',sf)
%textt='$\!\!\!\!\!$Dirac Comb'
%title(textt,'Interpreter','latex','fontsize',sf)
print -deps /Users/kevin/papers/math/DiracComb100k
