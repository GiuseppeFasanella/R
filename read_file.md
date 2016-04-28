```
> data=read.csv(file.choose(),header=TRUE)
oppure, il piu' generale read.table
> data=read.table(file.choose(),header=T,sep=",")
data=read.delim(file.choose(),header=TRUE)
data=read.table(file.choose(),header=TRUE,sep="\t") #tab delimited file
data=read.table(file="/home/gfasanel/dati.csv",header=T)
```
