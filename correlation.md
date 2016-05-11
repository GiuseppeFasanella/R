```
> #Pearson's correlation 
> #Spearman's rank correlation is a measure of the MONOTONIC association
> #Kendall's rank correlation
> plot(Age, LungCap, main="ScatterPlot")
> cor(Age, LungCap, method="pearson")
[1] 0.8196749
> cor(Age, LungCap, method="spearman")
[1] 0.8172464
> cor(Age, LungCap, method="kendall")
[1] 0.639576
> cor.test(Age, LungCap, method="kendall")

	Kendall's rank correlation tau

data:  Age and LungCap
z = 24.9111, p-value < 2.2e-16
alternative hypothesis: true tau is not equal to 0
sample estimates:
     tau 
0.639576 

> cov(Age, LungCap)
[1] 8.738289
> pairs(LungCapData)
> cor(LungCapData[,1:3])
          LungCap       Age    Height
LungCap 1.0000000 0.8196749 0.9121873
Age     0.8196749 1.0000000 0.8357368
Height  0.9121873 0.8357368 1.0000000
```
