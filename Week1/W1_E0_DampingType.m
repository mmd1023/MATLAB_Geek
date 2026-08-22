% @ElectroGeek255
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