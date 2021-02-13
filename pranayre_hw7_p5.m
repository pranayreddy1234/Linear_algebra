function B = pranayre_hw7_p5(A, p)
if p > rank(A)
    B = A;
else
    [U,S,V] = svd(A);
    x = diag(S);
    B = zeros(size(A));
    for i = 1:p
        B = B + x(i)*U(:,i)*(V(:,i)');
    end
end
    