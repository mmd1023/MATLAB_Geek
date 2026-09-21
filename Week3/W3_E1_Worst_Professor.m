% @ElectroGeek255
% MATLAB Geek Summer Bootcamp | 2026
% EXAMPLE 3, 1 | The Most Hated Professor in IUST
clear; clc;

T = readtable("worst_professor.csv");
professors = T.Professors;
votes = T.Votes;

bar(votes)

grid on
ylim([0 85])
title("نظرسنجی منفورترین استاد علموص")
ylabel("تعداد رأی‌ها")
xticklabels(professors)