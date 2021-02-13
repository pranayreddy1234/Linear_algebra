function [x] = pranayre_hw8_p2(f,df, x0, tol)
p = 0;
for i = 1:100
    x0 = x0 - (f(x0)/df(x0));
    p = p+1;
    if abs(f(x0))<tol
        break;
    
    end
end
if p<100
    x = x0;
else
    error('did not converge in 100 iterations')
end
end
        
        

