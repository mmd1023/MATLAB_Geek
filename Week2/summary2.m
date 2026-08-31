% MATLAB Geek Bootcamp - Week 2
% Plotting & Visualization
% @ElectroGeek255


clc; clear;
close all


%% 1. Basic plot
x = 1:5;
y = [4 3 8 6 1];
plot(x, y)

%% 2. Plot a mathematical function
x = -10:0.1:10;
y = x.^2;

plot(x, y)
grid on

%% 3. Common plot styles
plot(x, y, 'r--', 'LineWidth', 2)

% 'r--' -> red dashed line
% 'LineWidth' -> line thickness


%% 4. Complete second-order response

t = 0:0.01:10;
y = exp(-0.3*t) .* cos(2*t);

plot(t, y)
grid on
title('Second-Order Response')
xlabel('Time')
ylabel('Amplitude')

%% 5. Noisy Sin Wave Example
x = linspace(0, 2*pi, 200);
y = sin(x) + 0.1*rand(size(x));
plot(x, y)

%% 6. Bar chart
values = [5 8 3 10 6];
bar(values)

%% 7. Histogram
data = randi([0 20], 1, 1000);
histogram(data)

%% 8. Scatter plot
x = 1:20;
y = rand(1,20) * 100;
scatter(x, y, 100, 'filled')

%% 9. Pie chart
values = [20 30 15 35];
labels = {'A','B','C','D'};
pie(values, labels)


%% 10. Customize plots
plot(linspace(2, 18), linspace(10, 90))

title('Title')
xlabel('x')
ylabel('y')

xlim([0 20])
ylim([0 100])

set(gca, 'FontSize', 14)
set(gca, 'LineWidth', 1.5)


%% 11. Multiple plots with hold on
plot(x, sin(x))
hold on
plot(x, cos(x), '--')

legend('sin(x)', 'cos(x)')
hold off
% hold on  -> keep current plot
% hold off -> stop adding to current plot

%% 12. Subplot
subplot(2,2,1)
plot(x, sin(x))

subplot(2,2,2)
plot(x, cos(x))
% subplot(rows, columns, position)

%% 13. Global plot settings
set(groot, 'defaultAxesFontName', 'Vazirmatn')
set(groot, 'defaultTextFontName', 'Vazirmatn')
set(groot, 'defaultAxesFontSize', 16)
set(groot, 'defaultTextFontSize', 16)
set(groot, 'defaultAxesLineWidth', 1.5)
set(groot, 'defaultLineLineWidth', 2)
% groot -> root graphics object
% gca   -> current axes


%% 14. 3D plot
z = linspace(0, 20, 100);
x = cos(z);
y = sin(z);
plot3(x, y, z)
xlabel('x')
ylabel('y')
zlabel('z')

%% 15. 3D Scatter
scatter3(x, y, z, 50, 'filled')

%% 16. 3D Bar
bar3([5 8 3 10 6])

%% 17. 3D Pie
pie3([20 30 15 35])

%% 18. Mesh and Surf
x = linspace(-3, 3, 30);
y = linspace(-3, 3, 30);
[X,Y] = meshgrid(x,y);
Z = X.^2 - Y.^2;

mesh(X,Y,Z)
surf(X,Y,Z)
view(45,30)

%% 19. Mesh vs Surf with subplot
subplot(1,2,1)
mesh(X,Y,Z)

subplot(1,2,2)
surf(X,Y,Z)