% @ElectroGeek255
% EXAMPLE 1,1 | Infinite Resistor Network

clear; clc;

n = 100;

R = 1;
Req = R;

for k = 1:n
    Req = R + (R * Req)/(R + Req);
end

fprintf('\nEquivalent Resistance = %.6f Ω\n\n', Req);
