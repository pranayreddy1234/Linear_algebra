n = 2:50;
I = sqrt(5)-sqrt(2)+atanh(sqrt(2))-atanh(sqrt(5));
for i = 1:49
    error(i) = abs(I - (pranayre_hw10_p3(@(x)sqrt(1+x^(-2)), 1, 2, n(i))));
end
loglog(1./n,error,1./n,1./(n.^4));
legend('n','order');
xlabel('spacing(h)');
ylabel('error');