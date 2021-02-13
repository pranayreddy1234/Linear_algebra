p=logspace(1,3);
for m=1:50
    n=round(p(m));
A=rand(n,n)+n*eye(n);
tic;
pranayre_hw4_p2(A);
t(m)=toc;
end
loglog(round(p),t)
xlabel('matrix size')
ylabel('time required')

% we can observe from the graph that expected time is increasing for the
% increase in n value but the time we got is fluctuatingly increasing for
% every n value but not intersecting for any n value.