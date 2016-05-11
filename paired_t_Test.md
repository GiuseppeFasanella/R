```
> # Paired t-test 
> # difference in Means for 2 paired (dependent) population
> BloodPressure = read.table(file.choose(), header=T, sep="\t")
> attach(BloodPressure)
> names(BloodPressure)
[1] "Subject" "Before"  "After"  
> boxplot(Before, After)
> plot(Before, After)
> abline(a=0, b=1)
> #Null hypho: Mean difference in systolic blood pressure is 0
> # two-sided test
> t.test(Before, After, mu=0, alt="two.sided", paired=T, conf.level=0.99)

	Paired t-test

data:  Before and After
t = 3.8882, df = 24, p-value = 0.0006986
alternative hypothesis: true difference in means is not equal to 0
99 percent confidence interval:
  2.245279 13.754721
sample estimates:
mean of the differences 
                      8 

> #l'ordine e' importante
> t.test(After, Before, mu=0, alt="two.sided", paired=T, conf.level=0.99)

	Paired t-test

data:  After and Before
t = -3.8882, df = 24, p-value = 0.0006986
alternative hypothesis: true difference in means is not equal to 0
99 percent confidence interval:
 -13.754721  -2.245279
sample estimates:
mean of the differences 
                     -8 

> # Quindi l'ordine non e' importante: cambia solo il segno
```
