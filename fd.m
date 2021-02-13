%Fun = @(h) cos(h);
%dFun = @(h) -sin(h);
fun = @(h) ((cos((pi/5)+h)-cos(pi/5))/h);
%h=logspace(10.^(-1),10.^(-16),100);
%F=finitediff(h);
%G=dFun(h);
K=fun(h)

%dhforward = K(1:end)
%exactval=G(1:end);
%cosval=Fun(h);
%h(1:end);

%loglog(dhforward,exactval)
