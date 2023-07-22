clear;
close all;

a = 5;
f=3;
sample =100;
t= 1:1/sample:2;
phase = 0;
wave= a* sin(2*pi*f*t + phase);
stem(t,wave,'LineWidth',2);
xlabel('Time');
ylabel('Amplitude');
title('Sinosoidal');
grid();

