#coefficiente di correlazione lineare di Pearson
> cor(Age,Height)
> plot(Age,Height)
> plot(Age,Height,xlab="AGE",ylab="HEIGHT",las=1,xlim=c(0,25))
> plot(Age,Height,xlab="AGE",ylab="HEIGHT",las=1,xlim=c(0,25),cex=0.5)
> plot(Age,Height,xlab="AGE",ylab="HEIGHT",las=1,xlim=c(0,25),cex=0.5,pch=8)
> plot(Age,Height,xlab="AGE",ylab="HEIGHT",las=1,xlim=c(0,25),cex=0.5,pch=8,col=2)
> abline(lm(Height~Age),col=4)
