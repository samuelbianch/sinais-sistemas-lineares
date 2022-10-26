clc
clear
n = 1:1:10;
x = (0.8).^n;
g = (0.3).^n;
c = conv(x,g);
figure
subplot(2,2,1); bar(x,0.1); title('x[n]');
subplot(2,2,2); bar(g,0.1); title('g[n]');
subplot(2,1,2); bar(c,0.1); title('c[n]');
grid on;
