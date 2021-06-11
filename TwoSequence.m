%aim:- to write a program of two sequence

clc; clear all; close all;
x=input('enter the first sequence');
h=input('enter the second sequence');
l1=length(x);
l2=length(h);
N=max(l1,l2);
x=[x zeros(1,N-l1)];
h=[h zeros(1,N-l2)];
y=zeros(1,N);
for n=1:N
    for m=1:N
        if(n-m<0)
            k=N+n-m+1;
        else
            k=n-m+1;
        end
    
    y(n)=y(n)+x(k)*h(m);
    end
end
output=y;
subplot(411);
stem(1:l1,x);
xlabel('time');
ylabel('amplitude');
title('first sequence');
subplot(412);
stem(1:m,h);
xlabel('time');
ylabel('amplitude');
title('second sequence')
subplot(413);
stem(1:N,y);
xlabel('time');
ylabel('amplitude');
title('output sequence')


