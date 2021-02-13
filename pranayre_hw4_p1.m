h=logspace(-1,-16,100);
funn = @(h)(cos((pi/5)+h)-cos(pi/5)).*h.^(-1);

K=funn(h);

dhforward = funn(h);
exactval=-sin(pi/5);

h(1:end);
P = abs(exactval - dhforward);

loglog(h,P)
xlabel('step size(h)');
ylabel('error');

%At 10.^(-8) the error is minimum so the step size would be 10.^(-8), from
%10.^(-16) to 10.^(-8) the error is fluctuating with a decrease in the
%error and there is a rise in the error after 10.^(-8)