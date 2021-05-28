
%Aim:Plot sine and cosine funtion

clc
clear all
close all
a=7;
f=0.5;
t=0:0.001:10;
y=a*sin(2*pi*f*t);
subplot(4,1,1);
plot(t,y);
axis([-10 10 -10 10]);
title('Sine funtion');
xlabel('Time Axis');
ylabel('Amplitude Axis');
y=a*cos(2*pi*f*t);
subplot(4,1,2);
plot(t,y);
axis([-10 10 -10 10]);
title('cosine Funtion');
xlabel('Time Axis');
ylabel('Amplitude Axis');
z=a*sawtooth(2*pi*f*t);
subplot(4,1,3);
plot(t,z);
axis([-10 10 -10 10]);
xlabel('Time Axis');
ylabel('Amplitude Axis');