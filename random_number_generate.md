```
#random number
 x1 <- runif(1, 5.0, 7.5)
 
 #random integer
x3 <- sample(1:10, 1)

#sample of random integer (repetition of the same number allowed)
> x4 <- sample(1:10, 5, replace=T)
> x4
[1] 6 9 7 6 5 # vedi che 6 appare 2 vole => perche' hai chiesto replace=T



> rand=rnorm(n=40, mean=75, sd=5)
> hist(rand)
```
