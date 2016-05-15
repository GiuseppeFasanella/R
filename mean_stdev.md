```
> table(Smoke)/length(Smoke)
Smoke
       no       yes 
0.8937931 0.1062069 
> tabel(Smoke,Gender)
Errore: non trovo la funzione "tabel"
> table(Smoke,Gender)
     Gender
Smoke female male
  no     314  334
  yes     44   33
> mean(LungCap)
[1] 7.863148
> mean(LungCap,trim=0.10)
[1] 7.938081
> median(LungCap)
[1] 8
> var(LungCap)
[1] 7.086288
> sd(LungCap)
[1] 2.662008
> sqrt(var())
Errore in is.data.frame(x) : 
  l'argomento "x"  non è specificato e non ha un valore predefinito
> sqrt(var(LungCap))
[1] 2.662008
> quantile(LungCap,probs=0.9)
   90% 
11.205 
> quantile(LungCap,probs=c(0.20,0.5,0.9))
   20%    50%    90% 
 5.645  8.000 11.205 
> cor(LungCap,Age,method="spearman")
[1] 0.8172464
> cov(LungCap,Age)
[1] 8.738289
```
