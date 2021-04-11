clc
clear all
close all
x=input('sequence');
N=input('length of DFT');
l=length(x);
if N>l
    x=[x zeros(1,N-1)];
else
    x=x(1:N);
end
i=sqrt(-1)
w=exp(-i*2*pi/N);
n=0:N-1;
k=0:N-1;
k=n'*k;
W=w.*xk;
X=x*W;
disp(x);
subplot(211);
stem(k,abs(x));
xlabel('time');
ylabel('amplitude');
title('first sequence');
subplot(212);
stem(k,angle(x));
xlabel('time');
ylabel('amplitude');
title('second sequence');