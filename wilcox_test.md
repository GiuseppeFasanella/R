```
> #Mann Whitney U Test a.k.a Wilcoxon Rank-Sum Test
> # non-parametric method to study difference in medians between 2 populations
> boxplot(LungCap ~ Smoke)
> # Null hyp: median lung capacity of smokers = that of non smokers
> # two-sided test
> wilcox.test(LungCap ~ Smoke, mu=0, alt="two.sided", conf.int=T, conf.level=0.95, paired=F, exact=T, correct=T)

	Wilcoxon rank sum test with continuity correction

data:  LungCap by Smoke
W = 20128, p-value = 0.005538
alternative hypothesis: true location shift is not equal to 0
95 percent confidence interval:
 -1.3999731 -0.2499419
sample estimates:
difference in location 
            -0.8000564 

Warning messages:
1: In wilcox.test.default(x = c(6.475, 9.55, 11.125, 4.8, 6.225, 4.95,  :
  impossibile calcolare p-value esatto in presenza di ties
2: In wilcox.test.default(x = c(6.475, 9.55, 11.125, 4.8, 6.225, 4.95,  :
  impossibile calcolare intervalli di confidenza esatti in presenza di ties
> # exact means exact p-value calculation
> wilcox.test(LungCap ~ Smoke, mu=0, alt="two.sided", conf.int=T, conf.level=0.95, paired=F, exact=F, correct=T)

	Wilcoxon rank sum test with continuity correction

data:  LungCap by Smoke
W = 20128, p-value = 0.005538
alternative hypothesis: true location shift is not equal to 0
95 percent confidence interval:
 -1.3999731 -0.2499419
sample estimates:
difference in location 
            -0.8000564 
```
