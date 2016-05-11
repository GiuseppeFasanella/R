```
> DietData=read.table(file.choose(), header=T, sep="\t")
> attach(DietData)
> names(DietData)
[1] "WeightLoss" "Diet"      
> #analysis of variance
> help(aov)
> boxplot(WeightLoss~Diet)
> #La perdita di peso, divisa per dieta
> ANOVA1=aov(WeightLoss ~ Diet)
> ANOVA1
Call:
   aov(formula = WeightLoss ~ Diet)

Terms:
                     Diet Residuals
Sum of Squares   97.32983 296.98667
Deg. of Freedom         3        56

Residual standard error: 2.302897
Estimated effects may be unbalanced
> summary(ANOVA1)
            Df Sum Sq Mean Sq F value  Pr(>F)   
Diet         3  97.33   32.44   6.118 0.00113 **
Residuals   56 296.99    5.30                   
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> attributes(ANOVA1)
$names
 [1] "coefficients"  "residuals"     "effects"       "rank"          "fitted.values" "assign"       
 [7] "qr"            "df.residual"   "contrasts"     "xlevels"       "call"          "terms"        
[13] "model"        

$class
[1] "aov" "lm" 

> #extract attrubutes
> ANOVA1$coefficients
(Intercept)       DietB       DietC       DietD 
  9.1800000  -0.2733333   2.9333333   1.3600000 
> #We have evidenze che le medie siano diverse per dieta
> TukeyHSD(ANOVA1)
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = WeightLoss ~ Diet)

$Diet
          diff        lwr       upr     p adj
B-A -0.2733333 -2.4999391 1.9532725 0.9880087
C-A  2.9333333  0.7067275 5.1599391 0.0051336
D-A  1.3600000 -0.8666058 3.5866058 0.3773706
C-B  3.2066667  0.9800609 5.4332725 0.0019015
D-B  1.6333333 -0.5932725 3.8599391 0.2224287
D-C -1.5733333 -3.7999391 0.6532725 0.2521236

> plot(TukeyHSD(ANOVA1))
> 

> # Kruskall Wallis One-Way Analys of Variance:: non-parametric equivalent to the one-way Analysis of Variance
> kruskal.test(WeightLoss~Diet)

	Kruskal-Wallis rank sum test

data:  WeightLoss by Diet
Kruskal-Wallis chi-squared = 15.9021, df = 3, p-value = 0.001188
```
