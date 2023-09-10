clc;
clear all;
close all;
%%Input Signal
nx = 0:0.5:2;
x = ones(size(nx)); %%x(t) = 1;
subplot(3,1,1);
stem(nx,x,'Color','red','LineWidth',1);
title('Input Signal');
legend('x(\tau)');
xlim([0 2]);
grid on;
%%Impulse Response Signal....
nh = 0:0.5:1;
h = 1-nh;
subplot(3,1,2);
stem(nh,h,'Color','blue','LineWidth',1);
title('Impulse Response');
legend('h(\tau)');
xlim([0 2]);
grid on;
%%Output of the convolution.....
y = conv(x,h);
%%start:(end+start)/length(y):end-(end+start)/length(y);(Input signal for start and end)
ty = 0:(0+2)/length(y):2-(0+2)/length(y); 
subplot(3,1,3);
stem(ty,y,'Color','blue','LineWidth',1);
title('Convolution of the signal Output y(n)');