```
> LungCapData=read.table(file.choose(), header=T, sep="\t")
> attach(LungCapData)
> names(LungCapData)
[1] "LungCap"   "Age"       "Height"    "Smoke"     "Gender"    "Caesarean"
> 
> # two-sample t Test : parametric method appropriate for examining the difference in Means for 2 populations
> #relation between smoking and lung capacity
> boxplot(LungCap ~ Smoke)
> #Ipotesi nulla: mean lung cap of smokers = of non smokers
> # two-sided test
> t.test(LungCapa~Smoke, mu=0, alt="two.sided", conf=0.95, var.eq=F, paired=F)
Errore in eval(expr, envir, enclos) : oggetto "LungCapa" non trovato
> t.test(LungCap~Smoke, mu=0, alt="two.sided", conf=0.95, var.eq=F, paired=F)

	Welch Two Sample t-test

data:  LungCap by Smoke
t = -3.6498, df = 117.719, p-value = 0.0003927
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -1.3501778 -0.4003548
sample estimates:
 mean in group no mean in group yes 
         7.770188          8.645455 

> #oppure, altra sintassi
> t.test(LungCap[Smoke=="no"], LungCap[Smoke=="yes"], mu=0, alt="two.sided", conf=0.95, var.eq=F, paired=F)

	Welch Two Sample t-test

data:  LungCap[Smoke == "no"] and LungCap[Smoke == "yes"]
t = -3.6498, df = 117.719, p-value = 0.0003927
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -1.3501778 -0.4003548
sample estimates:
mean of x mean of y 
 7.770188  8.645455 

> #Levene's Test
> #Null hypothesis: population variances are equal
> library(car)
Errore in library(car) : there is no package called ‘car’
> # Vabbe' non ho installato il paccheto e adesso di installarlo non mi va
```
