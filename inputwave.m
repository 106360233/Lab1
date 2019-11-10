[s_source,fs_source]=audioread('rain.wav');

fs=fs_source;
s=s_source;
t = (1:length(s))/fs; 
subplot(2,1,1); plot(t, s); 
subplot(2,1,2);specgram(s, 256, fs); 
sound(s_source,fs_source);
audiowrite('rain1.wav',s,(fs+1)/2);
audiowrite('rain2.wav',s,fs*2);
audiowrite('rain3.wav',s/2,fs);
audiowrite('rain4.wav',s*2,fs);
