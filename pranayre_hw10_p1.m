function [l] = pranayre_hw10_p1(x, i, xList)
h = 1;
d = size(xList);
for k = 1:d
    if i~=k
        h = h*((x - xList(k))/(xList(i)-xList(k)));
    end
end
l = h;
end

        
        
        
        
    
