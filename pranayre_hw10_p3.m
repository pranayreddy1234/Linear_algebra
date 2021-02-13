function [val] = pranayre_hw10_p3(f, a, b, n)
h = (b-a)/n;
I = 0;
x1 = a;
x2 = a+(h/2);
x3 = a+h;
for i = 1:n
    I = I + ((h/6)*(f(x1)+4*f(x2)+f(x3)));
    x1 = x1 + h;
    x2 = x2 + h;
    x3 = x3 + h;
end
val = I;
end
    