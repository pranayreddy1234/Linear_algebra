function [x] = pranayre_hw8_p3(fdf, x0, tol)
p = 0;
for i = 1:100
    [F, J] = fdf(x0);
    p = p+1;
    x0 = x0 - (inv(J)*F);
    if norm(F) < tol
        break;
    end
end
if(p<100)
    x = x0;
else
    error('did not converge in 100 iterations')
end
end
    
    
    
    
    