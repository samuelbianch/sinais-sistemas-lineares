clc
clear

n = 100;
intervalo = -4:0.01:4;
indice = 1;
T = 2;
w = 2*pi/T;

for t = -4:0.01:4
  valor = 0;
  for k = -n:n
    if (k~=0)
      valor = valor +(((2*i*k*w-exp(2*i*k*w)+1)*(exp(i*k*w*t-2*i*k*w)))/(2*(k^2)*w^2));
    else
      valor = valor + 0.01;
    endif
  end
  res(indice) = valor;
  indice = indice + 1;
 end
plot(intervalo, res);
