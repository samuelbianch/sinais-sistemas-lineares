clc;
clear;
fs = 4410; # frequencia amostragem na gravação do áudio
nbits = 16; # bits da placa de audiodevinfo
arquivo = 'Sons/bateria.wav';
%ler arquivo WAV ------------
arquivo = audioinfo(arquivo);
[audio_wav, fs] = audioread('Sons/bateria.wav');
audio_wav = audio_wav(:,1)'; # canal 1
t = 0:1/fs:1;
# escutando o som ----------
soundsc(audio_wav, fs, nbits);
# plotar o audio ------------
tfinal = length(audio_wav)*1/fs;
t = linspace(0, tfinal, length(audio_wav));
normal = length(audio_wav);
auxiliar = 0:normal-1;
T = normal/fs;
fre = auxiliar/T;
Y = abs(fft(audio_wav)/normal);
frec = ceil(normal/2);
Y = Y(1:frec);
figure;
plot(fre(1:frec), Y);
xlabel('Frequencia Hz');
title('Espectro da frequencia do Sinal');
