% MATLAB Geek Bootcamp - Week 1
% Conditions, Loops & Useful Commands
% @ElectroGeek255

%% 1. Input

% Number / Matrix / Vector Input
x = input("");
A = input("Enter a matrix: ");
v = input("Enter a vector: ");

% Text Input
name = input("Enter your name: ","s");

% Display
disp(x)
disp(A)
disp(name)

fprintf("Value = %.2f\n", pi);   % %.2f -> floating-point with 2 decimals
fprintf("x = %d\n", 10);         % %d -> integer


%% 2. Matrix Concatenation

A = [1 2; 3 4];
B = [5 6; 7 8];

C = [A B];      % Horizontal concatenation
D = [A; B];     % Vertical concatenation


%% 3. if / elseif / else

x = 10;

if x > 0
    disp("Positive")
elseif x < 0
    disp("Negative")
else
    disp("Zero")
end


% Multiple conditions
age = 20;

if age >= 18 && age < 60
    disp("Adult")
elseif age >= 60
    disp("Senior")
else
    disp("Underage")
end


% Logical operators
x = 5;

x > 0
x < 10
x >= 5
x ~= 3
(x > 0) && (x < 10)     % AND
(x < 0) || (x > 10)     % OR


%% 4. Example: Damping Type

% EXAMPLE 1,0 | Damping Type
clear; clc;

a = input('Enter a: ');
b = input('Enter b: ');
c = input('Enter c: ');

alpha = b / (2*a);
w0 = sqrt(c/a);

fprintf('Alpha = %.2f\n', alpha);
fprintf('w0 = %.2f\n\n', w0);

if alpha == 0
    disp('Undamped');
elseif alpha < w0
    disp('Underdamped');
elseif alpha == w0
    disp('Critically Damped');
else
    disp('Overdamped');
end


%% 5. Colon Operator

1:5
1:2:10
10:-1:1

start = 0;
step = 0.5;
finish = 3;

start:step:finish


% Vector indexing with colon
x = 10:10:50;

x(1)
x(2:4)
x(2:end)
x(1:end)       % end refers to the last index


%% 6. linspace

linspace(0, 1, 5)
linspace(0, 10, 11)

x = linspace(0, 2*pi, 100);


% Difference between colon and linspace
0:0.2:1
linspace(0, 1, 6)


%% 7. for Loop

for k = 1:5
    disp(k)
end

for k = 1:2:10
    fprintf("k = %d\n", k)
end


% Sum of numbers
total = 0;

for k = 1:10
    total = total + k;
end

total


%% 8. for Loop with Vectors

x = [10 20 30 40 50];

for k = 1:length(x)
    fprintf("x(%d) = %d\n", k, x(k))
end


% Calculate the square of each element
x = 1:5;
y = zeros(size(x));

for k = 1:length(x)
    y(k) = x(k)^2;
end

y


%% 9. while Loop

n = 1;

while n <= 5
    disp(n)
    n = n + 1;
end


% Sum until a condition is reached
total = 0;
n = 1;

while total < 100
    total = total + n;
    n = n + 1;
end

total
n


%% 10. Example: Infinite Resistance Network

% R_eq = R + (R * R_eq)/(R + R_eq)

n = 100;
R = 1;
Req = R;

for k = 1:n
    Req = R + (R * Req)/(R + Req);
end

fprintf('\nEquivalent Resistance = %.6f Ω\n\n', Req);


%% 11. Mini Example: Approximate e

% e = 1 + 1/1! + 1/2! + 1/3! + ...

N = 10;
e_approx = 1;
factorial_value = 1;

for k = 1:N
    factorial_value = factorial_value * k;
    e_approx = e_approx + 1/factorial_value;
end

e_approx
exp(1)


%% 12. Example: Bisection Method

% f(x) = e^x - cos(x) - 1
clear; clc;

a = 0;
b = 2;

for k = 1:20
    c = (a + b) / 2;

    fa = exp(a) - cos(a) - 1;
    fc = exp(c) - cos(c) - 1;
    fb = exp(b) - cos(b) - 1;

    if fa * fc < 0
        b = c;
    else
        a = c;
    end
end

fprintf("Root = %.6f\n", c)


%% 13. Useful Search

lookfor matrix
lookfor determinant