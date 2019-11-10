clear all
close all
[s,fs]=audioread('rain.wav');

t = (1:length(s))/fs; 
subplot(5,1,1); plot(t, s);
audioLeft = s(:, 1);

subplot(5,1,2);spectrogram(audioLeft,128,120,128,fs,'yaxis');

t=[0:length(audioLeft)-1]/fs;

t=t(:); 

Fc=100;
carrier=cos(2*pi*Fc*t);
subplot(5,1,3);plot(t,carrier);

freqdev=50 ;
int_x = cumsum(audioLeft)/fs;
xfm = cos(2*pi*Fc*t + 2*pi*freqdev*int_x );
audiowrite('fm_modulated.wav',xfm,fs)

subplot(5,1,4);plot(t,xfm);
subplot(5,1,5);spectrogram(xfm,128,120,128,fs,'yaxis');















