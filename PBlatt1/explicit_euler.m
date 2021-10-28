function y_euler = explicit_euler(f,y_0, T, tau)

K = T/tau
d = size(y_0);
d = d(1);

y = zeros(d,K+1);
y(:,1) = y_0;

for i=1:K
    y(:,i+1) = y(:,i) + tau*f(tau*i, y(:,i));
    
end
y_euler = y;

end

