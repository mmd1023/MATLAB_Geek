% MATLAB Geek Bootcamp - Week 0
% Content Summary

% Basic Math
2^10 / (2 * 2) - 1
sqrt(25)
sin(pi/2)
log(10)
exp(1)

% Variables & Types
voltage = 10;           % Double
current = 2.5;
resistance = voltage/current;
x = int64(10);          % 64-bit signed integer
x = uint64(10);         % 64-bit unsigned integer
name = "MATLAB";        % String
letter = 'A';           % Character
flag = true;            % Logical
class(voltage)          % Get variable type

% Workspace
who                     % List variables
whos                    % Detailed variable information
clear                   % Clear workspace
clc                     % Clear Command Window

% Vectors
v_horizontal = [1 2 3 4 5];
v_vertical = [1; 2; 3; 4; 5];
v = 1:2:10;             % start:step:end
v(1)                     % First element
v(end)                   % Last element
v(2:4)                   % Elements 2 to 4
v(3) = 100;              % Modify an element

% Matrices & Indexing
A = [1 2; 3 4];
B = [5 6; 7 8];
A(1,2)                   % Row 1, column 2
A(1,:)                   % Entire first row
A(:,2)                   % Entire second column
A(1,2) = 10;             % Modify an element

% Operators
A + B
A - B
A * B                    % Matrix multiplication
A / B                    % Matrix right division
A \ B                    % Matrix left division
A^2                      % Matrix power
A .* B                   % Element-wise multiplication
A ./ B                   % Element-wise division
A .^ 2                   % Element-wise power
A'                       % Transpose

% Matrix Functions
zeros(3)                 % 3x3 matrix of zeros
zeros(2, 3)              % 2x3 matrix of zeros
ones(3)                  % 3x3 matrix of ones
eye(3)                   % 3x3 identity matrix
magic(3)                 % 3x3 magic square
size(A)                  % Matrix dimensions
length(A)                % Length of largest dimension
sum(A)                   % Sum of elements
mean(A)                  % Mean of elements
std(A)                   % Standard deviation
min(A)                   % Minimum value
max(A)                   % Maximum value
median(A)                % Median value
sort(A)                  % Sort elements

% Vector Operations
dot([1 2 3],[4 5 6])     % Dot product
cross([1 2 3],[4 5 6])   % Cross product

% Linear Algebra
det(A)                   % Determinant
inv(A)                   % Inverse matrix
x = A\[5; 1];            % Solve A*x = b

% Comments & Help
% This is a comment
help plot                % Help in Command Window
doc plot                 % Open full documentation


% IO
x = input(""); % Number / Matrix / Vector Input
name = input("Enter your name: ","s"); % Text Input
x = 10;
disp(x) % Display
fprintf("Value = %.2f\n",pi); % Print in Format