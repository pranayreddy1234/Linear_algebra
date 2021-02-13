function [Q,R] = pranayre_hw6_p1(A)
P = size(A);
R = A;
Q = eye(P(1));
for k = 1:P(2)
    X = R(k:P(1),k);
    e1 = zeros(size(X));
    e1(1) = 1;
    V = (sign(X(1))*norm(X)*e1) + X;
    V = V/norm(V);
    R(k:P(1),k:P(2)) = R(k:P(1),k:P(2)) - 2*V*(V'*R(k:P(1),k:P(2)));
    Q(k:P(1),:) = Q(k:P(1),:) - 2*V*(V'*Q(k:P(1),:));
end
Q = Q';
    