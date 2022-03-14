%% This is related to Example 5.35 in Banks & Carson
%Produce a Standard Normal RV
mu = 10; sgm = 2;
myRV = makedist('Normal',mu,sgm);
pdf(myRV,10)
%Plot its density over an interval
x = [mu-4*sgm:0.01:mu+4*sgm];
plot(x,pdf(myRV,x))
%Find X=b that corresponds to 0.95 
b = icdf(myRV,0.95);
a = 10-(b-10);
p = cdf(myRV,b)-cdf(myRV,a);
%One way to sample from our RV
sample = random(myRV,1000,1);
h = histogram(sample,50);
%Compare the sample to its theoretical density
qqplot(random(dist,1000,1))
%Another way to sample from our RV
sample2 = rand(1000,1);
h2 = histogram(icdf(myRV,sample2),50);
%% We can produce many other RVs
lambda = 0.5;
myRV2 = makedist('Exponential',1/lambda);
myRV3 = makedist('Triangular',0,1,3);
%% Setting seed
rng(12345)
s = rng;
rand(5,1)