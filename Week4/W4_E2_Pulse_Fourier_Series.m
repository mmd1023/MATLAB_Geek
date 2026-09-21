% @ElectroGeek255
% MATLAB Geek Summer Bootcamp | 2026
% EXAMPLE 4, 2 | Periodic Pulse Approximation Using Fourier Series
clc; clear; close all;

T = pi;
w = 2 * pi / T;
t = linspace(-2*T, 2*T, 5000);

% Original square wave
f = (square(w * (t+0.25*T), 50) + 1) / 2;

plot(t, f, ':', 'LineWidth', 3);
hold on;
labels = {"Original"};

% Fourier Series approximation
k = 10;
for N = 1:2:k
    x = 0;
    for n = 1:N
        x = x + 2/(n*pi) * sin(n*pi/2) .* cos(n*w.*t);
    end
    x = x + 0.5;
    plot(t, x, 'LineWidth', 1);
    labels{end+1} = sprintf('N = %d', k);
end

legend(labels, 'Location', 'best');
title('Periodic Pulse Approximation Using Fourier Series');
ylim([-0.5 1.5]);
xlim([-2.2*T 2.2*T]);
xlabel('t'); ylabel('x(t)');
grid on;