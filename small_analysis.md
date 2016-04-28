```
LungCapData <- read.delim("~/Scaricati/LungCapData.txt")
> names(LungCapData)
[1] "LungCap"   "Age"       "Height"    "Smoke"     "Gender"    "Caesarean"

#voglio fare la media della colonna Age
#cosi' Age NON e' in memoria di R
> mean(LungCapData$Age)
[1] 12.3269

#cosi' Age e' visibile dalla memoria di R
> attach(LungCapData)
> mean(Age)
[1] 12.3269
> detach(LungCapData)
> Age
Errore: oggetto "Age" non trovato
> attach(LungCapData)
> class(LungCapData)
[1] "data.frame"
> class(Age)
[1] "integer"
> class(Gender)
[1] "factor"
> levels(Gender)
[1] "female" "male"  
> summary(LungCapData)
    LungCap            Age            Height      Smoke        Gender    Caesarean
 Min.   : 0.507   Min.   : 3.00   Min.   :45.30   no :648   female:358   no :561  
 1st Qu.: 6.150   1st Qu.: 9.00   1st Qu.:59.90   yes: 77   male  :367   yes:164  
 Median : 8.000   Median :13.00   Median :65.40                                   
 Mean   : 7.863   Mean   :12.33   Mean   :64.84                                   
 3rd Qu.: 9.800   3rd Qu.:15.00   3rd Qu.:70.30                                   
 Max.   :14.675   Max.   :19.00   Max.   :81.80   
 
 
 ##Casting
 > x=c(0,1,1,1,0)
> class(x)
[1] "numeric"
> x=as.factor(x)
> class(x)
[1] "factor"
```
