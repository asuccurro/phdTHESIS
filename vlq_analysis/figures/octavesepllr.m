clear ; close all; clc

x = [-200:0.1:200];
mu1 = 70;
si1 = 20;
fx1 = gaussianfunc(x, mu1, si1);

plot(x, fx1, 'LineWidth', 2, 'b')
hold on;

mu2 = -60;
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
legend('AAA', 'BBB', 'CCC', 'DDD',
       'location', 'northwest');
#legend('Background only hypothesis', 'Signal+Background hypothesis','1 - CL_b', 'CL_{s+b}'

set(gca, 'fontsize', 40)
#legend('Signal+Background hypothesis', 'location', 'northwest')

xlabel('XXX', 'fontsize', 40);
ylabel('YYY', 'fontsize', 40);

print('separatedLLR.eps', '-depsc2', '-F:50', '-tight') 
