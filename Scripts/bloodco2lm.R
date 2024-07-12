library(readxl)
library(ggplot2)
library(dplyr)
library(stats)

bloodco2 <- read_excel("./bloodco2.xlsx")

ggplot(bloodco2,aes(x=T,y=blood))+geom_point()+stat_smooth(method="lm",formula=y~x)
ggplot(bloodco2,aes(x=as.factor(T),y=blood))+geom_boxplot()

stats<-bloodco2%>%group_by(T)%>%summarise(promedio=mean(blood))
m1<-lm(blood~T,data=bloodco2)       
summary(m1)

yt1<-bloodco2%>%filter(T==1)
yt0<-bloodco2%>%filter(T==0)

t.test(yt1$blood,yt0$blood,alternative="two.sided",mu=0,var.equal=TRUE,conf.level=0.95)
