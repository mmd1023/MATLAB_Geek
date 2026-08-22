% MATLAB Geek Bootcamp - Week 1
% Quick Review
% @ElectroGeek255

%% Input / Output
x = input("Enter x: ");
A = input("Enter a matrix: ");
name = input("Enter your name: ","s");

disp(A)
disp(x)
fprintf("x = %.2f\n", x)

%% Matrix Concatenation
A = [1 2; 3 4];
B = [5 6; 7 8];
[A B]       % Horizontal
[A; B]      % Vertical

%% Conditions
x = 10;
if x > 0
    disp("Positive")
elseif x < 0
    disp("Negative")
else
    disp("Zero")
end

% Logical operators
x > 0
x ~= 5
(x > 0) && (x < 10)
(x < 0) || (x > 10)

%% Colon Operator
1:5
1:2:10
10:-0.5:1

x = 10:5:50;
x(2:4)
x(7:end) = 0

%% linspace
linspace(0, 1, 5)
x = linspace(0, 2*pi, 100)

%% for Loop
for k = 1:5
    disp(k)
end

% Accumulator
total = 0;

for k = 1:10
    total = total + k;
end

total

%% for Loop with Vectors
x = [10 20 30 40 50];

for k = 1:length(x)
    fprintf("x(%d) = %d\n", k, x(k))
end

%% while Loop
n = 1;

while n <= 5
    disp(n)
    n = n + 1;
end

%% Approximation of e with for

N = 10;
value = 1;
factorial_value = 1;

for k = 1:N
    factorial_value = factorial_value * k;
    value = value + 1/factorial_value;
end

value

%% Useful Search
lookfor matrix