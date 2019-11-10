[s,fs]=audioread('rain.wav');

t = (1:length(s))/fs; 
subplot(5,1,1); plot(t, s); 
audioLeft = s(:, 1); 

subplot(5,1,2);spectrogram(audioLeft,128,120,128,fs,'yaxis');

t=[0:length(audioLeft)-1]/fs;
t=t';  
f=1000;  
carrier=sin(2*pi*t*f);
subplot(5,1,3);plot(carrier);

out=audioLeft.*carrier;

audiowrite('am_modulated.wav',out,fs)
subplot(5,1,4);plot(t,out);xlabel('Time(s)');
subplot(5,1,5);spectrogram(out,128,120,128,fs,'yaxis');









