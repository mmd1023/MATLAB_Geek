% MATLAB Geek Bootcamp - Week 0

% Command Window - Basic Math

2 + 3
10 - 4
5 * 6
20 / 4
2^10

(2 + 3) * 4
2 + 3 * 4

sqrt(25)
sin(pi/2)
cos(0)
log(10)
exp(1)


% Variables - Basic Examples
x = 10;
y = 3.14;
a = 10;
b = 20;
c = a + b
d = a * b


% Proper Variable Name
voltage = 12;
current = 2;
resistance = voltage/current;


% Variable Type / Class
x = 10;
y = 3.14;
name = "MATLAB";
letter = 'A';
flag = true;

class(x)
class(y)
class(name)
class(letter)
class(flag)

% Numeric Types
x = double(10);
x = single(10);

x = int8(10);
x = int16(10);
x = int32(10);
x = int64(10);

x = uint8(10);
x = uint16(10);
x = uint32(10);
x = uint64(10);


% String and Character
s = "MATLAB Geek";
c = 'M';
class(s)
class(c)
string(c)
char(s)


% Logical
a = true;
b = false;


% Workspace & Command Window
who
whos
clear
clc

% Vectors - Row
v = [1 2 3 4 5];
v = [1, 2, 3, 4, 5];

% Vectors - Column
v = [1; 2; 3; 4; 5];

% Vector Generation
v = 1:5;
v = 1:2:10;
v = 10:-2:0;

% Vector Indexing
v = [10 20 30 40 50];
v(1)
v(3)
v(end)
v(2:4)
v(1:end-1)

% Vector Modification
v = [10 20 30 40 50];
v(3) = 100;
v(2:4) = 0;


% Vector Concatenation
a = [1 2 3];
b = [4 5 6];
c = [a b];
d = [a, b];


% Matrices
A = [1 2; 3 4];
B = [1 2 3; 4 5 6; 7 8 9];


% Matrix Indexing
A = [10 20 30; 40 50 60; 70 80 90];
A(1,1)
A(2,3)
A(1,:)
A(:,2)
A(1:2,2:3)
A(end,end)


% Matrix Modification
A = [1 2; 3 4];
A(1,2) = 10;
A(:,1) = 0;
A(2,:) = 5;

% Matrix Arithmetic
A = [1 2; 3 4];
B = [5 6; 7 8];
A + B
A - B
A * B
A / B
A \ B
A^2

% Element-wise Operators
A = [1 2; 3 4];
B = [5 6; 7 8];
A .* B
A ./ B
A .^ 2


% Transpose
A = [1 2 3; 4 5 6];
A'


% Matrix Functions - zeros
zeros(3)
zeros(2,4)
zeros(size(A))

% Matrix Functions - ones
ones(3)
ones(2,4)

% Matrix Functions - eye
eye(3)
eye(2,4)

% Matrix Functions - magic
magic(3)


% Matrix Properties
A = [1 2 3; 4 5 6];
size(A)
length(A)


% Matrix Statistics
A = [1 2 3; 4 5 6];
sum(A)
mean(A)
std(A)


% min / max
A = [1 8 3; 7 2 9];
min(A)
max(A)
min(A,[],1)
max(A,[],1)


% min / max with Index
v = [10 4 20 7 15];
[minValue, minIndex] = min(v);
[maxValue, maxIndex] = max(v);


% Median
v = [10 2 30 4 50];
median(v)


% Sort
v = [5 2 9 1 7];
sort(v)
sort(v,"descend")


% Dot Product
a = [1 2 3];
b = [4 5 6];
dot(a,b)


% Cross Product
a = [1 2 3];
b = [4 5 6];
cross(a,b)


% Determinant
A = [1 2; 3 4];
det(A)


% Inverse
A = [1 2; 3 4];
inv(A)


% Matrix Division / Linear System
A = [2 1; 1 -1];
b = [5; 1];
x = A\b;

% Comments
% This is a comment

% Help - Command Window
help plot

% Help - Documentation
doc plot