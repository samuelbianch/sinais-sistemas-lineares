clc;
clear;
n = pi:pi;
u = pi:pi;
x = (1/2).^n * u * (n-1);
h = u * (n + 1);

y = conv(x, h);

stem(n, y, 'k', 'LineWidth', 3); title('y(n)');
