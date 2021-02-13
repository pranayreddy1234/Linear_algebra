p = logspace(1,3);
for m = 1:50
    n = round(p(m));
    A = rand(n,n);
    tic;
    pranayre_hw5_p3(A);
    Y(m) = toc;
    tic;
    pranayre_hw5_p4(A);
    Z(m) = toc;
    tic;
    [Q3,R] = qr(A);
    E(m) = toc;
    tic;
    pranayre_hw6_p1(A);
    T(m) = toc;
end
loglog(round(p),Y,round(p),Z,round(p),E,round(p),T,round(p),(4*(round(p)).^3)/3)
xlabel('matrix size')
ylabel('time required')
legend('classical','Modified','Matlab QR','Householder Reflectors','expected long-term trend')
