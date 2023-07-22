% Signal Multiplication

% Clear the workspace and close all figures
clear;
close all;

% Define the time vector
t = 0:0.01:5;

% Define two signals
signal1 = sin(2*pi*1*t);     % Sinusoidal signal with frequency 1 Hz
signal2 = cos(2*pi*2*t);     % Cosine signal with frequency 2 Hz

% Multiplication of signals
multiplication_result = signal1 .* signal2;

% Plot the original signals and the multiplication result
figure;

% Plot Signal 1
subplot(3, 1, 1);
plot(t, signal1, 'b', 'LineWidth', 2);
xlabel('Time (t)');
ylabel('Amplitude');
title('Signal 1: sin(2\pi \cdot 1 \cdot t)');
grid on;

% Plot Signal 2
subplot(3, 1, 2);
plot(t, signal2, 'r', 'LineWidth', 2);
xlabel('Time (t)');
ylabel('Amplitude');
title('Signal 2: cos(2\pi \cdot 2 \cdot t)');
grid on;

% Plot Multiplication Result
subplot(3, 1, 3);
plot(t, multiplication_result, 'g', 'LineWidth', 2);
xlabel('Time (t)');
ylabel('Amplitude');
title('Multiplication Result: Signal 1 \cdot Signal 2');
grid on;
