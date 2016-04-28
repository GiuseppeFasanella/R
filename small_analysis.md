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

