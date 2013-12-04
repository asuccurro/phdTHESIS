clear ; close all; clc

x = [-200:0.1:200];
mu1 = 70;
si1 = 20;
fx1 = gaussianfunc(x, mu1, si1);

plot(x, fx1, 'LineWidth', 2, 'b')
hold on;

mu2 = 20;
si2 = 30;
fx2 = gaussianfunc(x, mu2, si2);
plot(x, fx2, 'LineWidth', 2, 'r')

xa1 = [-200:0.1:50];
fa1 = gaussianfunc(xa1, mu1, si1);
area(xa1, fa1, 'FaceColor', 'blue')

xa2 = [50:0.1:200];
fa2 = gaussianfunc(xa2, mu2, si2);
area(xa2, fa2, 'FaceColor', 'red')

plot([50 50], [0 0.025], 'LineWidth', 2, 'k')
plot(x, fx2, 'LineWidth', 2, 'r')

legend('right')
legend('Background only hypothesis', 'Signal+Background hypothesis',
       '1 - CL_b', 'CL_{s+b}', 'location', 'northwest');

set(gca, 'fontsize', 30)
#legend('Signal+Background hypothesis', 'location', 'northwest')

xlabel('f(Q)', 'fontsize', 50);
ylabel('probability density', 'fontsize', 50);

print('overlappedLLR.eps', '-depsc2', '-F:25', '-tight') 

