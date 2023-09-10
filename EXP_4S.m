clc;
clear all;
close all;
%%Input Signal
tx = 0:0.01:2;
x = ones(size(tx)); %%x(t) = 1;
subplot(3,1,1);
plot(tx,x,'Color','red','LineWidth',1);
title('Input Signal');
legend('x(\tau)');
xlim([0 2]);
grid on;
%%Impulse Response Signal....
t1 = -1:0.01:0;
t2 = 0:0.01:1;
t3 = 1:0.01:2;
h1 = zeros(size(t1));
h2 = 1-t2;
h3 = zeros(size(t3));
th = [t1 t2 t3];
h = [h1 h2 h3]; %%h(t) = 1-t;
subplot(3,1,2);
plot(th,h,'Color','blue','LineWidth',1);
title('Impulse Response');
legend('h(\tau)');
xlim([0 2]);
grid on;
%%Output of the convolution.....
y = conv(x,h);
ty = 0:(0+2)/length(y):2-(0+2)/length(y); 
%%start:(end+start)/length(y):end-(end+start)/length(y);(Input signal for start and end)
subplot(3,1,3);
plot(ty,y,'Color','blue','LineWidth',1);
title('Convolution of the signal Output y(t)');
