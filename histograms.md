```
> hist(LungCap,freq=F)
> hist(LungCap,freq=FALSE)
> hist(LungCap,freq=FALSE,breaks=14)
> hist(LungCap,freq=FALSE,breaks=c(0,2,4,16))
> hist(LungCap,freq=FALSE,breaks=seq(from=0,to=16,by=2),main="Histo")
> hist(LungCap,freq=FALSE,breaks=seq(from=0,to=16,by=2),main="Histo",las=1)
> lines(density(LungCap))
> lines(density(LungCap),col=2)
> lines(density(LungCap),col=2,lwd=3)
```
