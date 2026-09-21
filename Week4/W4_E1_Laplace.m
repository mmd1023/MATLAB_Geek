% @ElectroGeek255
% MATLAB Geek Summer Bootcamp | 2026
% EXAMPLE 4, 1 | Laplace Transform
clc; clear;

syms t s

f = t^2*exp(-3*t)*sin(5*t);

laplace(f)