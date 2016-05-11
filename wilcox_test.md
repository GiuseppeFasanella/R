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

```
> #Wilcoxon Signed Rank Test
> # Mean difference for 2 dependent samples
> help("wilcox.test")
> boxplot(Before, After)
> #Null Hypho: Median change in SBP is 0
> wilcox.test(Before, After, mu=0, alt="two.sided", paired=T, conf.int=T, conf.level=0.99)

	Wilcoxon signed rank test with continuity correction

data:  Before and After
V = 267, p-value = 0.0008655
alternative hypothesis: true location shift is not equal to 0
99 percent confidence interval:
  2.000012 14.000038
sample estimates:
(pseudo)median 
      7.500019 

Warning messages:
1: In wilcox.test.default(Before, After, mu = 0, alt = "two.sided",  :
  impossibile calcolare p-value esatto in presenza di ties
2: In wilcox.test.default(Before, After, mu = 0, alt = "two.sided",  :
  impossibile calcolare intervalli di confidenza esatti in presenza di ties
3: In wilcox.test.default(Before, After, mu = 0, alt = "two.sided",  :
  impossibile calcolare p-valu esatti in presenza di zeri
4: In wilcox.test.default(Before, After, mu = 0, alt = "two.sided",  :
  impossibile calcolar eintervalli di confidenza esatti in presenza di zeri
> wilcox.test(Before, After, mu=0, alt="two.sided", paired=T, conf.int=T, conf.level=0.99, exact=F, correct=F)

	Wilcoxon signed rank test

data:  Before and After
V = 267, p-value = 0.0008221
alternative hypothesis: true location shift is not equal to 0
99 percent confidence interval:
  2.000083 14.000027
sample estimates:
(pseudo)median 
      7.500019 

> #correct=F => not implement continuity corrections
```
