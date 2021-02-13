function [Q,R] = pranayre_hw5_p4(A)
P = size(A);
R = zeros(P(2));
Q = zeros([P(1) P(2)]);
V = zeros([P(1) P(2)]);
for j = 1:P(2)
    V(:,j) = A(:,j);
end
for i = 1:P(2)
    R(i,i) = norm(V(:,i),2);
    Q(:,i) = V(:,i)/R(i,i);
    for j = (i+1):P(2)
        R(i,j) = (Q(:,i)')*V(:,j);
        V(:,j) = V(:,j)-(R(i,j)*Q(:,i));
    end
end




