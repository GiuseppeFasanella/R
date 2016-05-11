```
> # chi square
> ?chisq.text
No documentation for ‘chisq.text’ in specified packages and libraries:
you could try ‘??chisq.text’
> ?chisq.test
> # contingency table
> 
> table(Gender, Smoke)
Errore in table(Gender, Smoke) : oggetto "Gender" non trovato
> attach(LungCapData)
> table(Gender, Smoke)
        Smoke
Gender    no yes
  female 314  44
  male   334  33
> TAB=table(Gender, Smoke)
> barplot(TAB, beside=T, legend=T)
> chisq.test(TAB, correct=T)

	Pearson's Chi-squared test with Yates' continuity correction

data:  TAB
X-squared = 1.7443, df = 1, p-value = 0.1866

> CHI =chisq.test(TAB, correct=T)
> attributes(CHI)
$names
[1] "statistic" "parameter" "p.value"   "method"    "data.name" "observed"  "expected"  "residuals"
[9] "stdres"   

$class
[1] "htest"

> CHI$expected
        Smoke
Gender         no      yes
  female 319.9779 38.02207
  male   328.0221 38.97793
> #Fisher's Exact test is a non-parametric alternative to Pearson's Chi-Square test
>  fisher.tes(TAB, conf.int=T, conf.level=0.99)
Errore: non trovo la funzione "fisher.tes"
>  fisher.test(TAB, conf.int=T, conf.level=0.99)

	Fisher's Exact Test for Count Data

data:  TAB
p-value = 0.1845
alternative hypothesis: true odds ratio is not equal to 1
99 percent confidence interval:
 0.3625381 1.3521266
sample estimates:
odds ratio 
 0.7054345 
 ```
