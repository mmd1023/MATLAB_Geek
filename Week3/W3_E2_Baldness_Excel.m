% @ElectroGeek255
% MATLAB Geek Summer Bootcamp | 2026
% EXAMPLE 3,2
% The effect of studying electrical engineering on baldness
clear; clc;

T = readtable("baldness.xlsx");
credits = T.Credits;
baldness = T.Baldness;

scatter(credits, baldness, 80, "filled");

grid on
xlim([0 145])
ylim([0 120])
title("اثرات گذراندن واحدهای دروس برق بر ریزش مو  ")
xlabel("تعداد واحدهای گذرانده شده در برق  ")
ylabel("درصد کچلی (%)")