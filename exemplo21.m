clc
clear
x = [0.5 2];
h = [1 1 1];
y = conv(h,x);
figure
subplot(2,2,1); bar(x,0.1); title('x[n]');
subplot(2,2,2); bar(h,0.1); title('h[n]');
subplot(2,1,2); bar(y,0.1); title('y[n]');
figure
subplot(2,2,1); stem(x); title('x[n]');
subplot(2,2,2); stem(h); title('h[n]');
subplot(2,1,2); stem(y); title('y[n]');
grid on;
