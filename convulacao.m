clc
clear
x = [1 2 3 2];
h = [2 1];
y = conv(h, x);
stem(y);
grid on;
