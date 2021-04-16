clc
clear all
close all
x1=[1 2 3 4];
x2=[4 3 2 1];
x3=x1+x2;
x4=x1.*x2;
x5=x1-x2;
subplot(611);
stem(x1);
ylabel('amplitude');
xlabel('time');
title('first sequence');
subplot(612);
stem(x2);
ylabel('amplitude');
xlabel('time');
title('second sequence');
subplot(613);
stem(x3);
ylabel('amplitude');
xlabel('time');
title('addition');
subplot(614);
stem(x4);
ylabel('amplitude');
xlabel('time');
title('multipilcation');
subplot(615);
stem(x5);
ylabel('amplitude');
xlabel('time');
title('substraction');
display(x1);
display(x2);
display(x3);
display(x4);
display(x5);