% Discrete-time unit impulse signal

% Clear the workspace and close all figures
clear;
close all;

% Define the time vector for the discrete-time signal
n = -5:5;

% Generate the discrete-time unit impulse signal
x_discrete = zeros(size(n));
x_discrete(n == 0) = 1;

% Plot the discrete-time unit impulse signal
stem(n, x_discrete, 'r', 'LineWidth', 2);
xlabel('Time (n)');
ylabel('Amplitude');
title('Discrete-time Unit Impulse Signal');
grid on;