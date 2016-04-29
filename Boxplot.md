```
> LungCapData=read.table(file="/home/gfasanel/Scaricati/LungCapData.txt",header=T)
> attach(LungCapData)
> boxplot(LungCap)
#las=1 ruota le scritte sull'asse y
> boxplot(LungCap,main="Boxplot",ylab="LungCapacity",ylim=c(0,16),las=1)
#LungCap separato per genere
> boxplot(LungCap ~ Gender,main="Boxplot",ylab="LungCapacity",ylim=c(0,16),las=1)
boxplot(LungCap[Gender=="female"],LungCap[Gender=="male"]

##Boxplot stratified by age
> help(box)
> ?boxplot
> boxplot(LungCap)

> AgeGroup=cut(Age,breaks=c(0,13,15,17,25),labels=c("<13","14/15","16/17","18+"))
> #check
> Age[1:5]
[1]  6 18 16 14  5
> AgeGroups[1:5]
> boxplot(LungCap[Age>=18]~Smoke[Age>=18],ylab="LungCapaciry",las=1)
> boxplot(LungCap~Smoke*AgeGroups,ylab="LungCapaciry",las=1)
Errore in eval(expr, envir, enclos) : oggetto "AgeGroups" non trovato
> boxplot(LungCap~Smoke*AgeGroup,ylab="LungCapaciry",las=1)
#las=2 ruota i label sull'asse x
> boxplot(LungCap~Smoke*AgeGroup,ylab="LungCapaciry",las=2)
> boxplot(LungCap~Smoke*AgeGroup,ylab="LungCapaciry",las=2,col=c(4,2))
4=blue, 2=red


```
