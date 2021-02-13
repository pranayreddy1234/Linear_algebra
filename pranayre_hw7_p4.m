function [l, v] = pranayre_hw7_p4(A, V0)


V0 = V0/norm(V0);
V(:,1) = V0;
tol = 10.^(-8);
diff = 1;
m(1) = V0'*A*V0;
k = 1;
while diff > tol
    V(:,k+1) = inv(A - m(k)*(eye(size(A))))*V(:,k);
    V(:,k+1) = V(:,k+1)/norm(V(:,k+1));
    m(k+1) = (V(:,k+1)')*A*(V(:,k+1));
    diff = abs(m(k+1) - m(k))/abs(m(k));
    l = m(k);
    v = V(:,k);
    k = k+1;
end 
end
