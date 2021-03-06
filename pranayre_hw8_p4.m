function [f, j] = pranayre_hw8_p4(x)
P = @(x1,x2)(x1.^2 + x2.^2 - 0.75);
dPx1 = @(x1)(2*x1);
dPx2 = @(x2)(2*x2);
M = @(x1,x2)(sin(pi*x1) - x2.^3);
dMx1 = @(x1)(pi*cos(pi*x1));
dMx2 = @(x2)(-3*(x2.^2));
f = [P(x(1),x(2));M(x(1),x(2))];
j = [[dPx1(x(1)),dPx2(x(2))];[dMx1(x(1)),dMx2(x(2))]];