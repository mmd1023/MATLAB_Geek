% MATLAB Geek Bootcamp - Week 4
% Engineering Mathematics & Symbolic Computation
% @ElectroGeek255


%% 1. Mathematical Functions
x = 2;

log(x)
log10(x)
exp(x)
sqrt(x)
nthroot(27, 3)
abs(-10)
rem(17, 5)
max([2 8 4 1])
min([2 8 4 1])

% Combining functions
x = -5;
y = sqrt(abs(x))
y = log(exp(3))


%% 2. Complex Numbers
z = 3 + 4i;

real(z)                 % Real part
imag(z)                 % Imaginary part
conj(z)                 % Complex conjugate
magnitude = abs(z)      % Magnitude
phase = angle(z)        % Phase angle
phase_deg = rad2deg(angle(z))
phase_deg = atan2d(imag(z), real(z))

% Complex arithmetic
z1 = 2 + 3i;
z2 = 4 - i;

z1 + z2
z1 - z2
z1 * z2
z1 / z2

% Polar form
r = abs(z);
theta = angle(z);

r
theta


%% 3. Complex Numbers in Engineering
V = 10 + 10i;
Z = 5 + 5i;

I = V / Z

abs(I)
angle(I)


%% 4. Trigonometric Functions
x = pi/4;

sin(x)
cos(x)
tan(x)

asin(1)
acos(0)
atan(1)

% Degree-based functions
sind(30)
cosd(60)
tand(45)

asind(0.5)
acosd(0.5)
atand(1)


%% 5. Hyperbolic Functions
x = 1;

sinh(x)
cosh(x)
tanh(x)

asinh(x)
acosh(2)
atanh(0.5)


%% 6. Rounding Functions
x = 3.7;

round(x)
floor(x)
ceil(x)
fix(x)

x = -3.7;

round(x)
floor(x)
ceil(x)
fix(x)

round(pi, 2)


%% 7. Symbolic Variables
% syms creates symbolic variables for algebraic calculations.
% Syntax: syms variable1 variable2 ...

syms x y z

f = x^2 + 2*x + 1


%% 8. Symbolic Constants and Expressions
% sym converts a value into a symbolic number.

a = sym(5);
b = sym(pi);

% Symbolic expressions can contain variables and constants.
f = x^2 + 3*x + 2


%% 9. Substitute Values
% subs replaces symbolic variables with given values.
% Syntax: subs(expression, variable, value)

f = x^2 + y^2;

subs(f,x,3)

% Replace multiple variables at once
subs(f,[x y],[3 4])


%% 10. Variable-Precision Arithmetic
% vpa evaluates a symbolic expression with a chosen number of digits.
% Syntax: vpa(expression, digits)

vpa(pi,10)
vpa(sqrt(2),20)


%% 11. Symbolic Functions
% Symbolic functions can be defined using:
% f(x) = expression

syms x

f(x) = x^2 + 3*x + 2;
f(2)

% Functions can have multiple inputs
f(x,y) = x^2 + y^2;
f(3,4)


%% 12. String to Symbolic Expression
% str2sym converts a string containing a mathematical expression
% into a symbolic expression.

str = "x^2 + 3*x + 2";

f = str2sym(str)

% Useful when expressions come from text input or files.


%% 13. Simplifying Expressions
% simplify rewrites an expression in a simpler form.

f = (x^2 - 1)/(x - 1);
simplify(f)

% expand expands products and powers.
expand((x + 1)^3)

% factor factors a polynomial.
factor(x^2 - 5*x + 6)

% collect groups terms according to a variable.
syms x y

collect(x^2*y + y^2*x + x^3, x)
% ans = x^3 + y*x^2 + y^2*x

collect(x^2*y + y^2*x + x^3, y)
% ans = x*y^2 + x^2*y + x^3


%% 14. Displaying Symbolic Expressions
% pretty displays symbolic expressions in a mathematical format.

f = (x^2 + 1)/(x + 3);

pretty(f)


%% 15. Solving Equations
% solve finds symbolic solutions of equations.
% Syntax: solve(equation, variable)

eq = x^2 - 5*x + 6 == 0;

sol = solve(eq,x)


%% 16. Solving a System of Equations
% Multiple equations and unknowns can be solved together.

syms x y

eq1 = 2*x + y == 7;
eq2 = x - y == 1;

sol = solve([eq1 eq2],[x y]);

sol.x
sol.y

% Multiple outputs can also be used
[x_sol,y_sol] = solve([eq1 eq2],[x y]);


%% 17. Complex System of Equations
% Symbolic equations can contain complex coefficients.
% This is useful for phasor and AC circuit calculations.

syms x y

eq1 = (2 + 3i)*x + y == 5;
eq2 = x + (1 - 2i)*y == 3i;

sol = solve([eq1 eq2],[x y]);

x_sol = vpa(sol.x,6)
y_sol = vpa(sol.y,6)


%% 18. Derivatives
% diff calculates symbolic derivatives.
% Syntax: diff(expression, variable)
%
% For higher-order derivatives:
% diff(expression, variable, order)

syms x

f = x^3 + 2*x^2 - 5*x + 1;

diff(f,x)
diff(f,x,2)


%% 19. Partial Derivatives
% diff also calculates partial derivatives.
% Other variables are treated as constants.

syms x y

f = x^2*y + 3*x*y^2;

df_dx = diff(f,x)
df_dy = diff(f,y)


%% 20. Jacobian
% jacobian calculates the matrix of first-order partial derivatives.
% Syntax: jacobian(F, variables)

syms x y

f1 = x^2 + y;
f2 = x*y + y^2;

J = jacobian([f1; f2],[x y])

% Evaluate the Jacobian at a specific point
subs(J,[x y],[1 2])


%% 21. Integrals
% int calculates symbolic integrals.
%
% Indefinite integral:
% int(expression, variable)
%
% Definite integral:
% int(expression, variable, lower, upper)

syms x

f = x^2 + 3*x + 2;

int(f,x)
int(f,x,0,2)


%% 22. Double Integrals
% Nested int() calls can be used for multiple integrals.

syms x y

f = x*y;

int(int(f,x,0,2),y,0,3)


%% 23. Limits
% limit calculates the limit of a symbolic expression.
% Syntax: limit(expression, variable, point)

syms x

f = sin(x)/x;

limit(f,x,0)


%% 24. Taylor Series
% taylor calculates a Taylor series approximation.
% Syntax: taylor(expression, variable, point)
%
% 'Order' controls the number of terms.

syms x

f = exp(x);

taylor(f,x,0)
taylor(f,x,0,'Order',10)


%% 25. Laplace Transform
% laplace converts a time-domain expression into the s-domain.
% Syntax: laplace(f,t,s)
%
% f -> time-domain function
% t -> time variable
% s -> Laplace-domain variable

syms t s

f = exp(2*t);
F = laplace(f,t,s)
f = ilaplace(F,s,t)

f = t^2*exp(-3*t)*sin(5*t);
F = laplace(f,t,s)
f = ilaplace(F,s,t)


%% 26. Inverse Laplace Transform
% ilaplace converts an s-domain expression back into the time domain.
% Syntax: ilaplace(F,s,t)
%
% F -> s-domain expression
% s -> Laplace variable
% t -> time variable

f = ilaplace(F,s,t)


%% 27. EXAMPLE 4, 1 | Laplace
% @ElectroGeek255
% Laplace

syms t s

f = t^2*exp(-3*t)*sin(5*t);

F = laplace(f,t,s)


%% 28. EXAMPLE 4, 1 | Inverse Laplace
% @ElectroGeek255
% Inverse Laplace

f = ilaplace(F,s,t)


%% 29. Ordinary Differential Equations
% dsolve solves symbolic ordinary differential equations.
% Syntax:
% dsolve(ODE)
% dsolve(ODE, conditions)

syms y(t)

Dy = diff(y);

ode = diff(y,2) + 2*Dy + 10*y == 0;

cond1 = y(0) == 1;
cond2 = Dy(0) == 0;

sol = dsolve(ode,cond1,cond2)


%% 30. EXAMPLE 4, 2 | ODE
% @ElectroGeek255
% Ordinary Differential Equation

syms y(t)

Dy = diff(y);

ode = diff(y,2) + 2*Dy + 10*y == 0;

cond1 = y(0) == 1;
cond2 = Dy(0) == 0;

sol = dsolve(ode,cond1,cond2)


%% 31. Plotting a Symbolic Function
% fplot plots symbolic functions directly.
% Syntax: fplot(function, [xmin xmax])

fplot(sol,[0 5])

grid on
xlabel("t")
ylabel("y(t)")
title("ODE Solution")