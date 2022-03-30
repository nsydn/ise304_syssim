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

%%
x = -1:0.01:1;
y = sqrt(1-x.^2);
y0 = zeros(1,length(x));
x0 = zeros(1,length(x));

hold on
plot(x,y,'b',x,-y,'b','LineWidth',2)
plot(x,y0,'k',x0,x,'k')
xlim([0 1])
ylim([0 1])

rng(1234); s = rng;
scatter(rand(1000,1),rand(1000,1),'.r')

grid on
