function [x, f] = pranayre_hw9_p1(fun, x0, tol, maxIter)
for i = 1:maxIter
    [F, G, H] = fun(x0);
    if norm(G) < tol
        x = x0;
        f = F;
        break;
    end
    k = -inv(H)*(G);   
    x0 = x0+(0.75*k);
end
end

    