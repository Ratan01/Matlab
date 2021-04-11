clc 
clear all
close all
x=input('first sequence');
h=input('second sequence');
x1=[x,length(h)-1];
X=fft(h);
h=[h,length(h)-1];
H=fft(h);
Y=X.*H;
y=fft(H);
disp(y)