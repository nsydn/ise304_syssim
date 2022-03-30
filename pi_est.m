%% Aprroximate pi
n = 1000:1000:10^6;
pi_hat = nan(length(n),1);
for i=1:length(n)
    rng(1234); s = rng;
    pi_hat(i) = 4*sum(rand(n(i),1).^2+rand(n(i),1).^2 <= 1)/n(i);
    %pi_est(i) = 4*sum(rand(n(i)).^2+rand(n(i)).^2 <= 1,'All')/n(i)^2;
end
hold all
plot(n,pi_hat,'.-')