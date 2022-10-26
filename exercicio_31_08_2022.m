clc;
close;

n=-3:3;
x = [0 5 2 3 0 0 0];
h = [0 2 4 0 0 0 0];
y = conv(x, h);

subplot(2, 2, 1); stem(n, x, 'k', 'LineWidth', 3); title('x[n]');
subplot(2, 2, 2); stem(n, h, 'k', 'LineWidth', 3); title('h[n]');
n_inicio = n(1) + n(1);
n_fim = n(7) + n(7);
ny = [n_inicio : n_fim];
subplot(2, 2, 3); stem(ny, y, 'k', 'LineWidth', 3); title('y[n] = x[n] * h[n]');
