% @ElectroGeek255
% MATLAB Geek Summer Bootcamp | 2026
% EXAMPLE 4, 0 | Ordinary Differential Equation
clear; clc; close all;

syms y(t);
Dy = diff(y);

ode = diff(y,2) + 2*Dy + 10*y == 0;

cond1 = y(0) == 1;
cond2 = Dy(0) == 0;

dsolve(ode)
sol = dsolve(ode,cond1,cond2)

fplot(sol,[0 10])

grid on
xlabel("t")
ylabel("y(t)")
title("ODE Solution")
