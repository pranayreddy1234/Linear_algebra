function [x] = pranayre_hw8_p1(f, a, b, tol)
m = (a+b)/2;
if abs(f(m)) < tol
    m = (a+b)/2;
    x = m;
else
    while abs(f(m))>tol
        if f(a)*f(m) < 0
            b = m;
        else
            a = m;
        end
        m = (a+b)/2;
    end
    x = m;
end
end