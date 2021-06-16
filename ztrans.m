
%AIM:Z-Transform of finite duration sequence with function and without function

clc
clear all
close all
disp('if you input finite duration sequence x(n),we will give you its Z-transform');
nf=input('please input the initial value of n=');
nl=input('please input the final value of n=');
x=input('discrete signal value x(n)=');
syms 'z';
syms 'm';
syms 'y';
f(y,m)=(y*(z^(-m)));
disp('Z-transform of the input sequence is displayed below');
k=1;
for n=nf:1:nl
    answer(k)=(f((x(k)),n));
    k=k+1;
end
disp(sum(answer));
subplot(411)
stem(1:k);
xlabel('Time');
ylabel('Amplitude');
title('finite sequence');