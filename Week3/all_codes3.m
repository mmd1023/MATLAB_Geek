% MATLAB Geek Bootcamp - Week 3
% Functions & File Handling
% @ElectroGeek255

clear; clc;
%% 1. Script M-Files
% A Script is a collection of MATLAB commands
% that are executed in the current Workspace.

%% 2. Function M-Files
% A Function has its own Workspace.
% It can receive inputs and return outputs.
% Basic function definition syntax:
function output = functionName(input)
    disp("Code!")
    output = "answer!";
end
% The function should normally be saved in a file with the same name as the function.

%% 3. Anonymous Functions
% Anonymous functions are useful for short functions
% that can be defined directly in a Script.
f = @(x) x.^2 + 2*x + 1;
y = f(3)

%% 4. Anonymous Function - Multiple Inputs
f = @(x,y) x.^2 + y.^2;
result = f(3,4)

%% 5. Function Handle
% @ can be used to create a handle to an existing function.
f = @sin;
y = f(pi/2)

%% 6. Function M-File Example
% Create a separate file named:
% squareNumber.m
% with the following code:
function y = squareNumber(x)
    y = x^2;
end
% Then call it from the Command Window or a Script:
x = 5;
y = squareNumber(x)

%% 7. Multiple Inputs and Outputs
% A function can have multiple input and output arguments.
% Example:
function [sumValue, productValue] = calculate(a,b)
    sumValue = a + b;
    productValue = a * b;
end
% Calling the function:
[a, b] = calculate(4,5)

%% 8. EXAMPLE 3, 0 | Bisection Function
% Numerical root finding using the Bisection Method.
function root = bisection(f, a, b, tol)
    fa = f(a);
    fb = f(b);
    if fa * fb > 0
        error("The interval does not contain a root.")
    end
    while (b - a) / 2 > tol
        c = (a + b) / 2;
        fc = f(c);
        if fa * fc < 0
            b = c;
            fb = fc;
        else
            a = c;
            fa = fc;
        end
    end
    root = (a + b) / 2;
end

%% 9. Calling the Bisection Function
% Define the mathematical function:
f = @(x) exp(x) - cos(x) - 1;
% Initial interval:
a = 0;
b = 2;
% Tolerance:
tol = 1e-6;
% Call the function:
root = bisection(f,a,b,tol);
fprintf("Root = %.6f\n",root)

%% 10. Text Files - Write
% fopen opens a file.
% "w" -> write mode
% "r" -> read mode
fid = fopen("data.txt","w");
fprintf(fid,"MATLAB Geek Bootcamp\n");
fprintf(fid,"Week 3\n");
fprintf(fid,"Value = %.2f\n",3.14159);
fclose(fid);

%% 11. Text Files - Read
% Open the file in read mode.
fid = fopen("data.txt","r");
data = fscanf(fid,"%s");
fclose(fid);
disp(data)

%% 12. Reading Numeric Data
fid = fopen("data.txt","r");
data = fscanf(fid,"%f")
data(2:5)
fclose(fid);

%% 13. Text Files - Read Line by Line
fid = fopen("data.txt","r");
line = fgetl(fid);
while ischar(line)
    disp(line)
    line = fgetl(fid);
end
fclose(fid);

%% 14. CSV Files - Write Matrix
A = [1 2 3; 4 5 6];
writematrix(A,"data.csv");

%% 15. CSV Files - Read Matrix
A = readmatrix("data.csv");
disp(A)

%% 16. CSV Files - Tables
% A Table can store different types of variables
% with column names.
T = table([1;2;3], [10;20;30], 'VariableNames',{'ID','Value'});
writetable(T,"table.csv");

%% 17. Read CSV Table
T2 = readtable("table.csv");
disp(T2)

%% 18. Excel Files - Write Matrix
A = [1 2 3; 4 5 6];
writematrix(A,"data.xlsx");

%% 19. Excel Files - Read Matrix
A = readmatrix("data.xlsx");
disp(A)

%% 20. Excel Files - Tables
writetable(T,"table.xlsx");

%% 21. Read Excel Table
T2 = readtable("table.xlsx");
disp(T2)

%% 22. Check File Existence
isfile("data.csv")
isfolder("data")

%% 23. Create and Change Folder
mkdir("data")
cd("data")
pwd
cd("..")

%% 24. List Files
dir
dir("*.csv")

%% 25. Making the Example File
professors = {'شریف سیرت', 'خاصی', 'بانو مستقیم', 'میرافضل', 'مسگرانی', ...
              'کعبی نژاد', 'غفاری', 'حمید کریمی', 'تقی زاده', 'سمیه'};
votes = [27 18 48 52 56 45 23 26 28 80];
prof_table = table(professors', votes', 'VariableNames', {'Professors', 'Votes'});
writetable(prof_table, 'professors_votes.csv');

%% 26. EXAMPLE 3, 1
% The Most Hated Professor in IUST
T = readtable("worst_professor.csv");
professors = T.Professors;
votes = T.Votes;

bar(votes)

grid on
ylim([0 85])
title("نظرسنجی منفورترین استاد علموص")
ylabel("تعداد رأی‌ها")
xticklabels(professors)

%% 27. Making the Example File
credits = [15 16 17 18 30 31 32 33 34 35 36 50 51 52 53 54 55 56 57 67 68 69 70 71 72 73 74 75 76 86 87 88 89 90 91 92 93 ...
           94 95 96 97 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 121 122 123 124 125 126 127 ...
           127 128 129 130 131 132 133 133 134 135 136 137 138 139 140 140 140 140 139 137 139 135];
baldness = [0 0 3 2 3 7 8 0 8 8 14 9 15 9 14 15 24 17 20 19 30 29 30 31 40 34 25 36 35 40 20 45 35 41 37 46 65 50 30 49 60 ...
            52 58 45 66 55 71 62 75 80 69 74 88 65 82 78 91 73 30 97 86 93 89 100 85 52 109 96 110 92 115 98 75 120 105 ...
            112 118 100 120 104 100 34 66 90 93 109 85];
data_table = table(credits', baldness', 'VariableNames', {'Credits', 'Baldness'});
writetable(data_table, 'credits_baldness_data.xlsx');

%% 28. EXAMPLE 3, 2
% The Effect of Studying Electrical Engineering on Baldness
T = readtable("baldness.xlsx");
credits = T.Credits;
baldness = T.Baldness;

scatter(credits, baldness, 80, "filled");

grid on
xlim([0 145])
ylim([0 120])
title("اثرات گذراندن واحدهای دروس برق بر ریزش مو")
xlabel("تعداد واحدهای گذرانده شده در برق")
ylabel("درصد کچلی (%)")