> Table=table(Smoke,Gender)
> barplot(Table,beside=T)
> barplot(Table,beside=T,legend.text=T)
> barplot(Table,beside=T,legend.text=c("Non-Smoke","Smoker"))

mosaicplot(Table)
