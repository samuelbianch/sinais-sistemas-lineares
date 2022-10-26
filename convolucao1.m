clc
clear
x = [3 2 5];
h = [4 2];
y = conv(h,x);
figure 1;
stem(y);
figure 2;
subplot(3,2,1); bar(x,0.2); title('x[n]');
subplot(3,2,2); bar(h,0.2); title('h[n]');
subplot(3,1,3); bar(y,0.2); title('y[n]');
grid on;
