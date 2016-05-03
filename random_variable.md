```
d sta per density: tu gli chiedi qual e' la prob di x e lui ritorna la prob
p sta per la cumulativa

###########Binomail distribution
> # P(x=3)
> dbinom(x=3, size=20, prob=1/6)
[1] 0.2378866
> # P(x=0) & P(x=1) &...&P(x=3)
> dbinom (x=0:3, size=20, prob=1/6)
[1] 0.02608405 0.10433621 0.19823881 0.23788657
> #P(X<=3)
> sum(dbinom (x=0:3, size=20, prob=1/6))
[1] 0.5665456
# La cumulativa si chiama con pbinom
> pbinom (q=3, size=20, prob=1/6, lower.tail=T)
[1] 0.5665456

###########Poisson distribution
> # P(x=4)
> dpois(x=4, lambda=7)
[1] 0.09122619
> ppois(q=4,lambda = 7, lower.tail = T)
[1] 0.1729916

###########Gauss
> pnorm(q=70, mean=75, sd=5, lower.tail = T)
[1] 0.1586553
> #find quantiles
> qnorm(p=0.25, mean=75, sd=5, lower.tail = T)
[1] 71.62755
> #make a plot
> x=seq(from=55, to=95, by=0.25)
> dens=dnorm(x,mean=75, sd=5)
> plot(x,dens)
> plot(x,dens,type="l")
> plot(x,dens,type="l",main="X-normal")
> abline(v=75)

########### t Student
> #t-stat=2.3, degree of freedom=25
> #P(t>2.3)
> pt(q=2.3, df=25, lower.tail = F)
[1] 0.01503675
> # two=sided pvalue (above 2.3 and below -2.3)
> pt(q=2.3, df=25, lower.tail = F) + pt(q=-2.3, df=25, lower.tail=T)
[1] 0.03007351
> # find t for 95% confidence
> # value of t with 2.5% in each tail
> qt(p=0.025, df=25, lower.tail=T)
[1] -2.059539

########### F
pf

########### exp
pexp


```
