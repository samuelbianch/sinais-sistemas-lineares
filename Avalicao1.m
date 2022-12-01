clc;
clear;
fs = 240; %Frequencia de amostragem ( 2 x MenorFrequencia)
t = 0:1/fs:1;
N = length(t);
x_t = sin(2*pi*80*t) + sin(2*pi*120*t); %Sinal senoidal dado pelo exercício
subplot(4, 1, 1);
plot(t, x_t); title("Sinal senoidal");
noise = sin(2*pi*60*t); %Sinal do ruído, solicitado no exercício 1.B)
subplot(4, 1, 2);
plot(t, noise); title("Sinal ruidoso");
sinal_com_ruido = x_t + noise;
subplot(4, 1, 3);
plot(t, sinal_com_ruido); title("Sinal com ruído");
y = fft(sinal_com_ruido); %Transformada de Fourrier
y = y(1:floor(length(y)/2));
freq = (0:N-1)*fs/N;
freq = freq(1:floor(length(freq)/2));
subplot(4, 1, 4);
plot(freq, abs(y)); title("Transformada de Fourier do sinal com ruído");
