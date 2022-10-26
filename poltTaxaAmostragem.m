clear; clc;
fs = 240; %frequência de amostragem
t = 0:1/fs:0.2; %intervalo de tempo
f = 20; %frequência do sinal
N = length(t);
sinal = 2*sin(2*pi*f*t); %gerar sinal de 5Hz
subplot(2, 2, 1);
plot(t, sinal); title("Sinal senoidal 20Hz");
xlabel('Tempo (s)'); ylabel('Amplitude');
f_noise = 60;
ruido = 2*sin(2*pi*f_noise*t);
sinal_ruidoso = sinal + ruido;
subplot(2, 2, 2);
plot(t, ruido); title('Sinal de ruido 60Hz');
xlabel('Tempo (s)'); ylabel('Amplitude');
subplot(2, 2, 3);
plot(t, sinal_ruidoso); title('Sinal ruidoso');
xlabel('Tempo (s)'); ylabel('Amplitude');
y = fft(sinal_ruidoso); %Transformada de Fourrier
y = y(1:floor(length(y)/2));
freq = (0:N-1)*fs/N;
freq = freq(1:floor(length(freq)/2));
subplot(2, 2, 4);
plot(freq, abs(y));
title("Espectro sinal ruidoso");
xlabel('Hz'); ylabel('|y(f)|');

