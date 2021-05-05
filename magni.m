clc
clear all
close all
M=10;
fp=200;
fs=600;
f=1000;
Wp=2*(fp/f);
Ws=2*(fs/f);
Window=hanning(M+1);
Wn=2*(fp/f);
b=fir1(M,Wn,window)
[H,W]=freqz(b,1)
subplot(211);
stem(W/pi,20*log(abs(H)));
ylabel('normalized frequency');
xlabel('magnitude in db');
title('magnitude');
subplot(212);
stem(W/pi,angle(H));
ylabel('normalized frequency');
xlabel('magnitude in db');
title('angle');