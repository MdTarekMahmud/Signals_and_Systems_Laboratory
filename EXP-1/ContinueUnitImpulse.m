% Continuous-time unit impulse signal

% Clear the workspace and close all figures
clear;
close all;

% Define the time vector for the continuous-time signal
t = -5:0.01:5;

% Generate the continuous-time unit impulse signal
x_continuous = zeros(size(t));
x_continuous(t == 0) = 1; % Approximate impulses at t = 0

% Plot the continuous-time unit impulse signal
plot(t, x_continuous, 'b', 'LineWidth', 2);
xlabel('Time (t)');
ylabel('Amplitude');
title('Continuous-time Unit Impulse Signal');
grid on;
