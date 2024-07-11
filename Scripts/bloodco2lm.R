library(readxl)
library(ggplot2)
library(dplyr)
library(stats)

bloodco2 <- read_excel("C:/Users/andresmv/OneDrive - Universidad del Norte/Drive/Uninorte/Uninorte-docencia/Doctorado Perú/R/bloodco2.xlsx")

ggplot(bloodco2,aes(x=T,y=blood))+geom_point()
ggplot(bloodco2,aes(x=as.factor(T),y=blood))+geom_boxplot()

stats<-bloodco2%>%group_by(T)%>%summarise(promedio=mean(blood))
m1<-lm(blood~T,data=bloodco2)       
summary(m1)