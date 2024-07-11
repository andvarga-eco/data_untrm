#1. Generamos una población ficticia de tamaño N=1000
# Variable Y: talla en cm. Suponemos E(Y)=165, SD=10

set.seed(1) #para generar siempre los mismos números
Y<-rnorm(1000,165,10)
hist(Y,prob=TRUE)
lines(density(Y))

#2. muestra de tamaño n

y1<-sample(Y,size=10)

#3. Media muestral

ybar<-mean(y1)
ysd<-sd(y1)
ybarse<-ysd/10^0.5
t<-(ybar-165)/ybarse


#4. Comparamos 

#4. En R

library(stats)
t.test(y1,mu=165)
