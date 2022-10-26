clc;
close;
k = 0:30;
x1 = [ones(1, 10), zeros(1, 15)];
x2 = sin(pi*k/6);
h1 = (0.8).^(k);

y1 = conv(h1, x1);
y2 = conv(h1, x2);

subplot(3, 2, 1); bar(x1, 0.2); title('x1');
subplot(3, 2, 2); bar(x2, 0.2); title('x2');
subplot(3, 2, 3); bar(y1, 0.2); title('y1 = h1 * x1');
subplot(3, 1, 3); bar(h1, 0.2); title('11');
