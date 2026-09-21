% @ElectroGeek255
% MATLAB Geek Bootcamp - Week 3
% Functions & File Handling
% Quick Review
clear; clc;
%% 0. Script M-Files
% Commands execute in the current Workspace.

%% 1. Function defenition in M-Files
% Functions have their own Workspace and can receive/return data.
function output = functionName(input)
    output = input;
end
% Usually saved as functionName.m

% Calling fanction
one = functionName(1)

%% 2. Anonymous Functions
f = @(x) x.^2 + 2*x + 1;
y = f(3);

%% 3. Anonymous Functions - Multiple Inputs
f = @(x,y) x.^2 + y.^2;
result = f(3,4);

%% 4. Function Handle
f = @sin;
y = f(pi/2);

%% 5. Multiple Inputs & Outputs
function [sumValue, productValue] = calculate(a,b)
    sumValue = a + b;
    productValue = a * b;
end
[a,b] = calculate(4,5);

%% 6. Text Files - Write
fid = fopen("data.txt","w");       % "w": write, "r": read
fprintf(fid,"Value = %.2f\n",3.14);
fclose(fid);

%% 7. Text Files - Read
fid = fopen("data.txt","r");
data = fscanf(fid,"%s");           % Read formatted data
fclose(fid);

%% 8. Read Numeric Data
fid = fopen("data.txt","r");
data = fscanf(fid,"%f");
fclose(fid);

%% 9. Read Line by Line
fid = fopen("data.txt","r");
line = fgetl(fid);
while ischar(line)
    disp(line)
    line = fgetl(fid);
end
fclose(fid);

%% 10. CSV Files - Matrix
writematrix(A,"data.csv");           % Write
A = readmatrix("data.csv");          % Read

%% 11. CSV Files - Table
T = table(A,B,'VariableNames',{'A','B'});
writetable(T,"table.csv");           % Write
T = readtable("table.csv");          % Read

%% 12. Excel Files - Matrix
writematrix(A,"data.xlsx");          % Write
A = readmatrix("data.xlsx");         % Read

%% 13. Excel Files - Table
writetable(T,"table.xlsx");          % Write
T = readtable("table.xlsx");         % Read

%% 14. Useful Table Access
T = readtable("data.csv");
column = T.ColumnName;               % Access a table column

%% 15. File & Folder Existence
isfile("data.csv")
isfolder("data")

%% 16. Create & Change Folder
mkdir("data")
cd("data")
pwd
cd("..")

%% 17. List Files
dir
dir("*.csv")