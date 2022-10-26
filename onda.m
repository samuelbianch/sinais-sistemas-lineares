clc
clear

N = 1000;
A = 1/2;
t = -5pi:0.01:5pi;
x = 1:length(t);
for k=1:length(x)
  x(k) = 0;
  for n=1:N
    x(k) = x(k) + (2/(pi*n))*sin(n*(pi/2))*cos(n*t(k));
  end
  x(k) = A + x(k);
end

plot(t, x);
grid on;
