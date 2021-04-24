clc
clear all
close all
x=[1 2 1 2];
h=[4 3 2 1];
x1=[x zeros(1,length(h)-1)];
h1=[h zeros(1,length(x)-1)];
X=fft(x1);
H=fft(h1);
X1=fft(x);
H1=fft(h);
y=X.*H;
y1=ifft(y);
Y=X1.*H1;
Y1=ifft(Y);
subplot(411);
stem(x);
ylabel('amplitude');
xlabel('time');
title('first sequence');
subplot(412);
stem(h);
ylabel('amplitude');
xlabel('time');
title('second sequence');
subplot(413);
stem(y1);
ylabel('amplitude');
xlabel('time');
title('linear convolution DFT');
subplot(414);
stem(Y1);
ylabel('amplitude');
xlabel('time');
title('circular convolution DFT');
display(y1);
display(Y1);