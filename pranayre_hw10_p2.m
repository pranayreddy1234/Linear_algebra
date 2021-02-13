function [f] = pranayre_hw10_p2(L, x, xList, yList)
d = size(xList);
k = 0;
for h = 1:d
    k = k + yList(h)*(L(x, h, xList));
end
f = k;
end
