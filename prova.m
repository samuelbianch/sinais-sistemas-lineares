clc;
close;

t = -6*pi:6*pi;

x = 2*cos(10*t+1) - sin(4*t-1);

stem(t, x, 'k', 'LineWidth', 3); title('x(t)');
