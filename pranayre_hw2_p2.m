function [num] = pranayre_hw2_p2(A, i, j, n)
k = 1;
num = 0;
B = A;
while k <= n
    num = num + L(i,j);
    A = A*B;
    k = k+1;
end
num;
end
    



    
        
    
        
   