S = 2:11;
for n = 2:11
    I = eye(n);
    H = hilb(n);
    Q1 = pranayre_hw5_p3(H);
    M(n-1) = norm((Q1'*Q1) - I);
    Q2 = pranayre_hw5_p4(H);
    N(n-1) = norm((Q2'*Q2) - I);
    [Q3,R] = qr(H);
    K(n-1) = norm((Q3'*Q3) - I);
    Q4 = pranayre_hw6_p1(H);
    O(n-1) = norm((Q4'*Q4) - I); 
end
semilogy(S,K,S,N,S,M,S,O)
legend('qr','modified','classical','household reflectors')
xlabel('matrix size')
ylabel('loss of orthogonality')