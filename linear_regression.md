```
> #linear regression
> plot(Age,LungCap, main="ScatterPlot")
> cor(Age,LungCap)
[1] 0.8196749
> #positive, fairly linear association
> mod=lm(LungCap ~ Age)
> summary(mod)

Call:
lm(formula = LungCap ~ Age)

Residuals:
    Min      1Q  Median      3Q     Max 
-4.7799 -1.0203 -0.0005  0.9789  4.2650 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  1.14686    0.18353   6.249 7.06e-10 ***
Age          0.54485    0.01416  38.476  < 2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.526 on 723 degrees of freedom
Multiple R-squared:  0.6719,	Adjusted R-squared:  0.6714 
F-statistic:  1480 on 1 and 723 DF,  p-value: < 2.2e-16

> attributes(mod)
$names
 [1] "coefficients"  "residuals"     "effects"       "rank"          "fitted.values" "assign"       
 [7] "qr"            "df.residual"   "xlevels"       "call"          "terms"         "model"        

$class
[1] "lm"

> mod$coefficients
(Intercept)         Age 
  1.1468578   0.5448484 
> #add regression line to the plot
> abline(mod)
> abline(mod, col=2, lwd=3)
> #colore rosso e linea piu' spessa
> confint(mod)
                2.5 %    97.5 %
(Intercept) 0.7865454 1.5071702
Age         0.5170471 0.5726497
> anova(mod)
Analysis of Variance Table

Response: LungCap
           Df Sum Sq Mean Sq F value    Pr(>F)    
Age         1 3447.0  3447.0  1480.4 < 2.2e-16 ***
Residuals 723 1683.5     2.3                      
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
```
