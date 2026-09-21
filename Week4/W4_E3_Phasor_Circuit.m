% @ElectroGeek255
% MATLAB Geek Summer Bootcamp | 2026
% EXAMPLE 4, 3 | Phasor Analysis and Complex Equation Systems

syms v1 v2 v3 v4
w = 8*sym(pi);

Z_L1 = 5*w*1j;
Z_L2 = 0.05*w*1j;
Z_C1 = -1j*1/(4.7*w)*10^6;
Z_C2 = -1j*1/(2.2*w)*10^6;
Z_C3 = -1j*1/(1*w)*10^6;

eq1 = (v1-5)/150 + v1/Z_L1 + (v1-v2)/330 == 0;
eq2 = (v2-v1)/330 + (v2-v3)/100 + (v2-v4)/220 == 0;
eq3 = (v3-v2)/100 + (v3-v4)/Z_C1 + v3/Z_C2 == 0;
eq4 = (v4-v2)/220 + (v4-v3)/Z_C1 + v4/(470+Z_L2) + v4/Z_C3 == 0;

sol = solve([eq1, eq2, eq3, eq4], [v1, v2, v3, v4]);
v1 = vpa(sol.v1, 6); v2 = vpa(sol.v2, 6); 
v3 = vpa(sol.v3, 6); v4 = vpa(sol.v4, 6);
i1 = vpa(v1/Z_L1, 6);

fprintf('v1 = %s = %.4f∠%.2f° V\n', char(v1), abs(double(v1)), angle(double(v1))*180/pi);
fprintf('v2 = %s = %.4f∠%.2f° V\n', char(v2), abs(double(v2)), angle(double(v2))*180/pi);
fprintf('v3 = %s = %.4f∠%.2f° V\n', char(v3), abs(double(v3)), angle(double(v3))*180/pi);
fprintf('v4 = %s = %.4f∠%.2f° V\n', char(v4), abs(double(v4)), angle(double(v4))*180/pi);
fprintf('i1 = %s = %.4f∠%.2f° A\n', char(i1), abs(double(i1)), angle(double(i1))*180/pi);