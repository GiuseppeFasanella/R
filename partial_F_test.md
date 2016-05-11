```
> # partial F test: decide if a coefficient can be removed/added from a model
> 

> #Full model: hai fatto una linear regression con tutto (Age, Gender, Smoke, Height)
> #Reduced model: ma Height e' proprio necessario? altrimenti lo levo
> # La logica e' la somma degli errori al quadrato e' significativamente diversa tra i due modelli
>  Full.Model = lm(LungCap ~ Age + I(Age^2))
> Reduced.Model= lm(LungCap ~ Age)
> # partial F test
> anova(Reduced.Model,Full.Model)
Analysis of Variance Table

Model 1: LungCap ~ Age
Model 2: LungCap ~ Age + I(Age^2)
  Res.Df    RSS Df Sum of Sq      F Pr(>F)
1    723 1683.5                           
2    722 1679.1  1    4.3476 1.8694  0.172
> #p-value is 0.172 => failed to reject the Null Hyphothesis
```
