```
> LungCapData=read.table(file="/home/gfasanel/Scaricati/LungCapData.txt",header=T)
> attach(LungCapData)
> boxplot(LungCap)
#las=1 ruota le scritte sull'asse y
> boxplot(LungCap,main="Boxplot",ylab="LungCapacity",ylim=c(0,16),las=1)
#LungCap separato per genere
> boxplot(LungCap ~ Gender,main="Boxplot",ylab="LungCapacity",ylim=c(0,16),las=1)
boxplot(LungCap[Gender=="female"],LungCap[Gender=="male"]
```
