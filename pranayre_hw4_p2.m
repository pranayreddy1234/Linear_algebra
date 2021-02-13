function [L, U] = pranayre_hw4_p2(A)
P = size(A);
L = eye(P(1),min(P(1),P(2)));
U = A;
for k=1:min((P(1)-1),P(2))
    for j=(k+1):P(1)
        L(j,k)=U(j,k)/U(k,k);
        U(j,k)=0;
        for i=k+1:P(2)
        U(j,i)= U(j,i)-L(j,k)*U(k,i);
        end
            
    end
end
if P(1)>P(2)
    U = U(1:P(2),1:P(2));
end 
end



    


