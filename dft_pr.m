clc
clear all
close all
N=input('number of dft points=');
xn=input('enter the sequence xn=');
ln=length(xn);
xn=[xn zeros(1,N-ln)];
xk=zeros(1,N);
ixk=zeros(1,N);
for k=0:N-1
for n=0:N-1
    xk(k+1)=xk(k+1)+(xn(n+1)*exp((-1i)*2*pi*k*n/N));
end 
end
t=0:N-1;
subplot(221);
stem(t,xn);
ylabel('amplitude --->');
xlabel('n --->');
title('input sequence ---->');
grid on;
magnitude=abs(xk);
disp('DFT sequence=');
disp(magnitude);
t=0:N-1;
subplot(222);
stem(t,magnitude);
ylabel('amplitude --->');
xlabel('k --->');
title('DFT sequence ---->');
grid on;
phase=angle(xk);
disp('phase=');
disp(phase);
t=0:N-1;
subplot(223);
stem(t,phase);
ylabel('phase --->');
xlabel('k --->');
title('phase response');4

grid on;
