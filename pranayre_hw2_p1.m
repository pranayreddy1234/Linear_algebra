function [length] = pranayre_hw2_p1(A, i, j)
length = 1;
L = A;
while A(i,j) < 1
    if length<=20
        length = length +1;
        A=A*L
    else
        error("length greater than 20")
end
length;
end    
    
    
        
        
        
  