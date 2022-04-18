lambda=40;
mu=1/2;

n=0;
pf=@(n)exp(-lambda/mu)*(lambda/mu)^n/factorial(n);
p=pf(0);
while p<=0.99
    n=n+1;
    p=p+pf(n);
end
p,n