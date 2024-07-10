
library(ggplot2)

x<-seq(-5,5,by=0.1)
ynorm<-pnorm(x,mean=0,sd=1)
pdf<-data.frame(x,ynorm)
ggplot(pdf,aes(x=x))+geom_line(aes(y=ynorm,colour="Normal"))+scale_color_manual("",breaks=c("Normal"),values=c("Normal"="#CC0000"))+labs(y="Fx(x)")+theme(legend.position = "bottom")+theme_minimal()

ydnorm<-dnorm(x,mean=0,sd=1)
ddf<-data.frame(x,ydnorm)
ggplot(ddf,aes(x=x))+geom_line(aes(y=ydnorm,colour="Normal"))+scale_color_manual("",breaks=c("Normal"),values=c("Normal"="#CC0000"))+labs(y="Fx(x)")+theme(legend.position = "bottom")+theme_minimal()
