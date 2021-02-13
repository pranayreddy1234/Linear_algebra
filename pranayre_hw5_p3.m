function [Q,R] = pranayre_hw5_p3(A)
P = size(A);
R = zeros(P(2));
Q = zeros([P(1) P(2)]);
for j=1:P(2)
    Q(:,j) = A(:,j);
    for i=1:j-1
        R(i,j) = (Q(:,i)')*A(:,j);
        Q(:,j) = Q(:,j)-(R(i,j))*Q(:,i);
    end
    
    R(j,j)= norm(Q(:,j),2);
    Q(:,j)= Q(:,j)/R(j,j);
    
end




    