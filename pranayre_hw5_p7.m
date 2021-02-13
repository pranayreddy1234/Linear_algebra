A = [[1,0];[1,1];[1,2];[1,3];[1,4];[1,5];[1,6]];
A1 = [[1,0,0];[1,1,1];[1,2,4];[1,3,9];[1,4,16];[1,5,25];[1,6,36]];
B = [-0.02;1.1;5.0;8.5;17.3;26.1;42];
[Q,R] = qr(A);
[Q1,R1] = qr(A1);
X = pinv(R)*Q'*B;
X1 = pinv(R1)*Q1'*B;
for n = 1:7
    y(n) = X(1)+(X(2)*A(n,2));
    y1(n) = X1(1)+(X1(2)*A1(n,2))+(X1(3)*(A1(n,3)));
end
plot(A(:,2),B,A(:,2),y,A(:,2),y1)
legend('data','resulting linear function','resulting quadratic polynomial')
xlabel('x')
ylabel('f(x)')

