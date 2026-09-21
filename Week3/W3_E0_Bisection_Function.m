% @ElectroGeek255
% MATLAB Geek Summer Bootcamp | 2026
% EXAMPLE 3, 0 | Bisection Function
clear; clc;

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


% Some math function
f = @(x) exp(x) - cos(x) - 1;

% Initial interval
a = 0;
b = 2;

tol = 1e-6;  % Tolerance

root = bisection(f,a,b,tol);

fprintf("Root = %f\n",root)