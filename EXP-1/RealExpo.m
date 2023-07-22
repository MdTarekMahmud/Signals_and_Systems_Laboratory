% Exponential Signal Generation

% Clear the workspace and close all figures
clear;
close all;

% Define the parameters of the exponential signal
A = 1;          % Amplitude
a = 0.5;       % Exponential coefficient (a < 0 for decay, a > 0 for growth)
t = 0:0.1:5;   % Time vector from 0 to 5 with a step of 0.01

% Generate the exponential signal
x = A * exp(a * t);

% Plot the exponential signal
plot(t, x, 'b', 'LineWidth', 2);
xlabel('Time (t)');
ylabel('Amplitude');
title('Exponential Signal');
grid on;
