%% Aprroximate pi
n = 1000:500:10^5;
pi_hat = nan(length(n),1);
for i=1:length(n)
    rng(1234); s = rng; X = rand(n(i),1);
    rng(2345); s = rng; Y = rand(n(i),1);
    pi_hat(i) = 4*sum(X.^2+Y.^2 <= 1)/n(i);
end
hold all
plot(n,pi_hat,'b',n,repmat(pi,length(n)),'--r')
xlabel('Sample size')
ylabel('Approximate value')
box('on')