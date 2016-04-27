# R


```
#Prima installare R, poi R-Studio (che e' una interfaccia grafica, una IDE)
sudo apt-get install -y r-base

#Scarica il deb di rstudio e installalo
sudo dpkg -i rstudio-0.99.896-amd64.deb
```
Una volta installato, per aprire un prompt

`R`

> x=seq(from=-2,to=2,by=0.1)

> x
 [1] -2.0 -1.9 -1.8 -1.7 -1.6 -1.5 -1.4 -1.3 -1.2 -1.1 -1.0 -0.9 -0.8 -0.7 -0.6
[16] -0.5 -0.4 -0.3 -0.2 -0.1  0.0  0.1  0.2  0.3  0.4  0.5  0.6  0.7  0.8  0.9
[31]  1.0  1.1  1.2  1.3  1.4  1.5  1.6  1.7  1.8  1.9  2.0

> y=x^2

> y
 [1] 4.00 3.61 3.24 2.89 2.56 2.25 1.96 1.69 1.44 1.21 1.00 0.81 0.64 0.49 0.36
[16] 0.25 0.16 0.09 0.04 0.01 0.00 0.01 0.04 0.09 0.16 0.25 0.36 0.49 0.64 0.81
[31] 1.00 1.21 1.44 1.69 1.96 2.25 2.56 2.89 3.24 3.61 4.00

> plot(x,y,type="l")

dev.copy2eps(file="plot.eps")

help("dev.copy2eps")

?plot

help.start() apre nel browser la documentazione

> png("plot.png",width=600,height=600)

> plot(x,y,type="l")

> dev.off()


https://www.youtube.com/watch?v=cX532N_XLIs&list=PLqzoL9-eJTNBDdKgJgJzaQcY6OXmsXAHU&index=1

https://www.youtube.com/watch?v=3yx1dqSsofc

Stats
https://www.youtube.com/watch?v=fTpTKRpMcFk

Undestanding covariance
https://www.youtube.com/watch?v=xGbpuFNR1ME

Understanding correlation
https://www.youtube.com/watch?v=4EXNedimDMs
