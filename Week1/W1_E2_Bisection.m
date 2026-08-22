% @ElectroGeek255
% EXAMPLE 1,0 | Bisection Method
% f: e^x - cosx - 1 = 0
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

