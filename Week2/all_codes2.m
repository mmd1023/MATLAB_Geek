% MATLAB Geek Bootcamp - Week 2
% Plotting & Visualization
% @ElectroGeek255


clc
clear
close all


%% 1. Basic plot

x = [1 2 3 4 5 6];
y = [4 3 8 6 1 5];

plot(x, y)


%% 2. Plot a mathematical function

x = -10:0.1:10;
y = x.^2 - 1;

plot(x, y)
grid on


%% 3. Common plot styles

x = 0:0.1:2*pi;
y = sin(x);

plot(x, y, 'r--', 'LineWidth', 2)
grid on

% 'r--'      -> red dashed line
% 'LineWidth' -> line thickness


%% 4. Complete second-order response

figure('Name','میرایی ضعیف','NumberTitle','off');

t = 0:0.01:10;

alpha = 0.3;
omega0 = 2;
wd = sqrt(omega0^2 - alpha^2);

y = exp(-alpha*t) .* ...
    (cos(wd*t) + sin(wd*t));

plot(t, y, 'LineWidth', 2)

grid on

title('میرایی ضعیف')
xlabel('زمان')
ylabel('دامنه')


%% 5. Noisy Sin Wave Example

x = linspace(0, 2*pi, 200);

y = sin(x);

noise = 0.2 * rand(size(x)) - 0.1;
y1 = sin(x) + noise;

plot(x, y)
hold on
plot(x, y1)

grid on


%% 6. Bar chart

professors = { ...
    'شریف سیرت', ...
    'خاصی', ...
    'بانو مستقیم', ...
    'میرافضل', ...
    'مسگرانی', ...
    'کعبی نژاد', ...
    'غفاری', ...
    'حمید کریمی', ...
    'تقی زاده', ...
    'سمیه'};

votes = [27 18 48 52 56 45 23 26 28 80];

bar(votes)

grid on
ylim([0 85])

title('نظرسنجی منفورترین استاد علموص')
ylabel('تعداد رأی‌ها')
xticklabels(professors)


%% 7. Histogram

data = randi([0 20], 1, 1000);

histogram(data)

grid on

title('Histogram')
xlabel('Value')
ylabel('Frequency')

% histogram(data)
% data -> input data


%% 8. Scatter plot

credits = [15 16 17 18 30 31 32 33 34 35 36 50 51 52 53 54 55 56 57 67 68 69 70 71 72 73 74 75 76 86 87 88 89 90 91 92 93 ...
           94 95 96 97 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 121 122 123 124 125 126 127 ...
           127 128 129 130 131 132 133 133 134 135 136 137 138 139 140 140 140 140 139 137 139 135];

baldness = [0 0 3 2 3 7 8 0 8 8 14 9 15 9 14 15 24 17 20 19 30 29 30 31 40 34 25 36 35 40 20 45 35 41 37 46 65 50 30 49 60 ...
            52 58 45 66 55 71 62 75 80 69 74 88 65 82 78 91 73 30 97 86 93 89 100 85 52 109 96 110 92 115 98 75 120 105 ...
            112 118 100 120 104 100 34 66 90 93 109 85];

scatter(credits, baldness, 100, 'filled')

grid on

xlim([0 145])
ylim([0 120])

title('اثرات گذراندن واحدهای دروس برق بر ریزش مو')
xlabel('تعداد واحدهای گذرانده شده در برق')
ylabel('درصد کچلی (%)')

% scatter(x, y, size, style)


%% 9. Pie chart

labels = { ...
    'زیاد', ...
    'تا حدی', ...
    '  کم', ...
    'خیلی کم (در معرض خودکشی)'};

values = [2 10 15 100];

pie(values, labels)

title('چقدر از انتخاب رشته برق راضی و خوشبخت هستید؟  ')


%% 10. Customize plots

x = 0:0.1:2*pi;
y = sin(x);

plot(x, y, 'LineWidth', 2)

grid on

title('Sine Wave')
xlabel('Time')
ylabel('Amplitude')

xlim([0 2*pi])
ylim([-1.2 1.2])

set(gca, 'FontSize', 14)
set(gca, 'LineWidth', 1.5)


%% 11. Multiple plots with hold on

x = linspace(0, 2*pi, 200);

y1 = sin(x);
y2 = cos(x);

plot(x, y1, 'LineWidth', 2)

hold on

plot(x, y2, '--', 'LineWidth', 2)

grid on

legend('sin(x)', 'cos(x)')

title('Sine and Cosine')
xlabel('x')
ylabel('y')

hold off

% hold on  -> keep current plot
% hold off -> stop adding to current plot


%% 12. Subplot

x = 0:0.01:2*pi;

y1 = sin(x);
y2 = cos(x);
y3 = exp(-x);
y4 = x.^2;

figure

subplot(2,2,1)
plot(x,y1)
title('sin(x)')
grid on

subplot(2,2,2)
plot(x,y2)
title('cos(x)')
grid on

subplot(2,2,3)
plot(x,y3)
title('e^{-x}')
grid on

subplot(2,2,4)
plot(x,y4)
title('x^2')
grid on

% subplot(rows, columns, position)


%% 13. Global plot settings

set(groot, 'defaultAxesFontName', 'Vazirmatn');
set(groot, 'defaultTextFontName', 'Vazirmatn');

set(groot, 'defaultAxesFontSize', 16);
set(groot, 'defaultTextFontSize', 16);

set(groot, 'defaultAxesLineWidth', 1.5);
set(groot, 'defaultLineLineWidth', 2);


%% 14. 3D plot

z = linspace(0, 20, 100);
y = sin(z);
x = cos(z);

plot3(x, y, z)

grid on

xlabel('x')
ylabel('y')
zlabel('z')

title('3D Plot')


%% 15. 3D Scatter

x = rand(1,100);
y = rand(1,100);
z = rand(1,100);

scatter3(x, y, z, 50, 'filled')

grid on

xlabel('x')
ylabel('y')
zlabel('z')

title('3D Scatter')


%% 16. 3D Bar

values = [5 8 3 10 6];

bar3(values)

grid on

title('3D Bar')


%% 17. 3D Pie

values = [20 30 15 35];

pie3(values)

title('3D Pie')


%% 18. Mesh and Surf

x = linspace(-3, 3, 30);
y = linspace(-3, 3, 30);

[X, Y] = meshgrid(x, y);

Z = X.^2 - Y.^2;


% Mesh

figure

mesh(X, Y, Z)

xlabel('x')
ylabel('y')
zlabel('z')

title('Mesh')

grid on
view(45, 30)


% Surf

figure

surf(X, Y, Z)

xlabel('x')
ylabel('y')
zlabel('z')

title('Surf')

grid on
view(45, 30)


%% 19. Mesh vs Surf with subplot

figure

subplot(1,2,1)

mesh(X, Y, Z)

xlabel('x')
ylabel('y')
zlabel('z')

title('Mesh')

grid on
view(45,30)


subplot(1,2,2)

surf(X, Y, Z)

xlabel('x')
ylabel('y')
zlabel('z')

title('Surf')

grid on
view(45,30)