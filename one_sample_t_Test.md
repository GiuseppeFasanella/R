```
> LungCapData=read.table(file.choose(), header=T, sep="\t")
> attach(LungCapData)
> names(LungCapData)
[1] "LungCap"   "Age"       "Height"    "Smoke"     "Gender"    "Caesarean"
> class(LungCap)
[1] "numeric"
> help("t.test")
> 
> boxplot(LungCap)
> # Null Hypothesis: mu>=8 ; Alternative hyphothesis Ha: mu < 8
>  t.test(LungCap, mu=8, alternative="less", conf.level=0.95)

	One Sample t-test

data:  LungCap
t = -1.3842, df = 724, p-value = 0.08336
alternative hypothesis: true mean is less than 8
95 percent confidence interval:
     -Inf 8.025974
sample estimates:
mean of x 
 7.863148 

> 

> # two-sided confidence interval test
>  t.test(LungCap, mu=8, alternative="two.sided", conf.level=0.95)

	One Sample t-test

data:  LungCap
t = -1.3842, df = 724, p-value = 0.1667
alternative hypothesis: true mean is not equal to 8
95 percent confidence interval:
 7.669052 8.057243
sample estimates:
mean of x 
 7.863148 

> TEST= t.test(LungCap, mu=8, alternative="two.sided", conf.level=0.95)
> attributes(TEST)
$names
[1] "statistic"   "parameter"   "p.value"     "conf.int"    "estimate"    "null.value"  "alternative" "method"      "data.name"  

$class
[1] "htest"

> TEST$conf.int
[1] 7.669052 8.057243
attr(,"conf.level")
[1] 0.95
>   TEST$p.value
[1] 0.1667108
```
