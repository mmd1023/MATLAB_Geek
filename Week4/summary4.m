% MATLAB Geek Bootcamp - Week 4
% Quick Review
% Engineering Mathematics & Symbolic Computation
% @ElectroGeek255

%% 1. Mathematical Functions
x = 2;
log(x)                  % Natural logarithm
log10(x)                % Base-10 logarithm
exp(x)                  % e^x
sqrt(x)                 % Square root
nthroot(27,3)           % nth root
abs(x)                  % Absolute value
rem(17,5)               % Remainder

%% 2. Complex Numbers
z = 3 + 4i;
real(z)                 % Real part
imag(z)                 % Imaginary part
conj(z)                 % Complex conjugate
abs(z)                  % Magnitude
angle(z)                % Phase in radians
rad2deg(angle(z))       % Phase in degrees

%% 3. Trigonometric & Hyperbolic Functions
sin(pi/4); cos(pi/4); tan(pi/4)      % Trigonometric
asin(1); acos(0); atan(1)            % Inverse trigonometric
sind(30); cosd(60); tand(45)         % Degree-based
sinh(1); cosh(1); tanh(1)            % Hyperbolic
asinh(1); acosh(2); atanh(0.5)       % Inverse hyperbolic

%% 4. Rounding Functions
x = -3.7;
round(x)                % Round to nearest integer
floor(x)                % Round toward -Inf
ceil(x)                 % Round toward +Inf
fix(x)                  % Round toward zero
round(pi,2)             % Round to specified digits

%% 5. Symbolic Variables & Expressions
syms x y z              % Create symbolic variables
f = x^2 + 2*x + 1;
a = sym(5);             % Convert value to symbolic number
b = sym(pi);

%% 6. Substitute Values
subs(f,x,3)             % Substitute one variable
subs(f,[x y],[3 4])     % Substitute multiple variables

%% 7. Variable-Precision Arithmetic
vpa(pi,10)              % Evaluate with specified number of digits
vpa(sqrt(2),20)

%% 8. Symbolic Functions
syms x
f(x) = x^2 + 3*x + 2;   % Define symbolic function
f(2)                    % Evaluate function
f(x,y) = x^2 + y^2;     % Multiple inputs

%% 9. String to Symbolic Expression
str = "x^2 + 3*x + 2";
f = str2sym(str);        % Convert string to symbolic expression

%% 10. Simplifying Expressions
simplify(f)              % Simplify expression
expand((x+1)^3)          % Expand expression
factor(x^2-5*x+6)        % Factor polynomial
collect(x^2*y+x^3,x)     % Collect terms by variable

%% 11. Displaying Symbolic Expressions
pretty(f)                % Display in mathematical format

%% 12. Solving Equations
eq = x^2 - 5*x + 6 == 0;
sol = solve(eq,x);       % Solve equation

%% 13. Solving Systems of Equations
eq1 = 2*x + y == 7;
eq2 = x - y == 1;
sol = solve([eq1 eq2],[x y]);
sol.x                    % Access solution for x
sol.y                    % Access solution for y

% Multiple outputs:
[x_sol,y_sol] = solve([eq1 eq2],[x y]);

%% 14. Complex Systems of Equations
eq1 = (2+3i)*x + y == 5;
eq2 = x + (1-2i)*y == 3i;
sol = solve([eq1 eq2],[x y]);       % Solve complex system
vpa(sol.x,6)                        % Numerical approximation

%% 15. Derivatives
diff(f,x)                % First derivative
diff(f,x,2)              % Second derivative
diff(f,y)                % Partial derivative with respect to y

%% 16. Jacobian
J = jacobian([f1;f2],[x y]);        % Jacobian matrix
subs(J,[x y],[1 2])                 % Evaluate at a point

%% 17. Integrals
int(f,x)                 % Indefinite integral
int(f,x,0,2)             % Definite integral
int(int(f,x,0,2),y,0,3)  % Double integral

%% 18. Limits
limit(sin(x)/x,x,0)      % Limit at a point

%% 19. Taylor Series
taylor(exp(x),x,0)       % Taylor series around a point
taylor(exp(x),x,0,'Order',10)

%% 20. Laplace Transform
syms t s
F = laplace(f,t,s);      % Time domain -> s domain
f = ilaplace(F,s,t);     % s domain -> time domain

%% 21. Ordinary Differential Equations
syms y(t)
Dy = diff(y);
ode = diff(y,2) + 2*Dy + 10*y == 0;
cond1 = y(0) == 1;
cond2 = Dy(0) == 0;
sol = dsolve(ode,cond1,cond2);       % Solve symbolic ODE

%% 22. Plotting Symbolic Functions
fplot(sol,[0 5])         % Plot symbolic function over interval
title("ODE Solution")