% Complex Exponential Signal Generation

% Clear the workspace and close all figures
clear;
close all;

% Define the parameters of the complex exponential signal
A = 1;               % Amplitude
a = 0.5;            % Exponential coefficient (a < 0 for decay, a > 0 for growth)
omega = 2 * pi * 2;  % Angular frequency (in this case, 2 cycles per unit time)
t = 0:0.01:5;        % Time vector from 0 to 5 with a step of 0.01

% Generate the complex exponential signal
x_complex = A * exp(a * t) .* exp(1i * omega * t);

% Plot the real and imaginary parts of the complex exponential signal
figure;
plot(t, real(x_complex), 'b', 'LineWidth', 2);
hold on;
plot(t, imag(x_complex), 'r', 'LineWidth', 2);
xlabel('Time (t)');
ylabel('Amplitude');
title('Complex Exponential Signal');
legend('Real Part', 'Imaginary Part');
grid on;
