```
LungCapData=read.table(file="/home/gfasanel/Scaricati/LungCapData.txt",header=T)
attach(LungCapData)
percent=table(Gender)/725
barplot(percent,main="TITLE",xlab="Gender",ylab="%",las=1, names.arg=c("Female","Male"))
pie(count,main="TITLE")
```
