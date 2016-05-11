```
> #risks etc are all measures of the direction and the strength of the association between two variables
> TAB=table(Gender,Smoke)
> TAB
        Smoke
Gender    no yes
  female 314  44
  male   334  33
> barplot(TAB, beside=T, legend=T)
> 
> #relative risk, odds ratio, attributable risk
> library(epiR)
Carico il pacchetto richiesto: survival
Carico il pacchetto richiesto: splines
Package epiR 0.9-74 is loaded
Type help(epi.about) for summary information


> help(package="epiR")
> TAB
        Smoke
Gender    no yes
  female 314  44
  male   334  33
> epi.2by2(TAB, method="cohort.count", conf.level=0.95)
             Outcome +    Outcome -      Total        Inc risk *        Odds
Exposed +          314           44        358              87.7        7.14
Exposed -          334           33        367              91.0       10.12
Total              648           77        725              89.4        8.42

Point estimates and 95 % CIs:
-------------------------------------------------------------------
Inc risk ratio                               0.96 (0.92, 1.01)
Odds ratio                                   0.71 (0.44, 1.14)
Attrib risk *                                -3.30 (-7.79, 1.19)
Attrib risk in population *                  -1.63 (-5.32, 2.06)
Attrib fraction in exposed (%)               -3.76 (-9.12, 1.34)
Attrib fraction in population (%)            -1.82 (-4.34, 0.64)
-------------------------------------------------------------------
 X2 test statistic: 2.077 p-value: 0.15
 Wald confidence limits
 * Outcomes per 100 population units 
> # odds ratio: the odds of a female not smoking are 0.71 times the odds of a male not smoking
> # put TAB in the standard ABCD way
> TAB2=matrix(x(44,314,33,334),nrow=2, byrow=T)
Errore in matrix(x(44, 314, 33, 334), nrow = 2, byrow = T) : 
  non trovo la funzione "x"
> TAB2=matrix(c(44,314,33,334),nrow=2, byrow=T)
> TAB2
     [,1] [,2]
[1,]   44  314
[2,]   33  334
> # e questo e' il format ABCD
> TAB3=cbind(TAB[,2], TAB[,1])
> TAB3
       [,1] [,2]
female   44  314
male     33  334
> colnames(TAB3)=c("yes", "no")
> TAB3
       yes  no
female  44 314
male    33 334
```
