setwd("C:\\Users\\IT24103116\\Downloads\\Lab 08-20250926")
data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

popmn<- mean(Weight.kg.)
popvar<- var(Weight.kg.)
popsd<- sqrt(popvar)

samples<- c()
n<- c()

for (i in 1:25) {
  s<- sample(Weight.kg.,6,replace = TRUE)
  samples<- cbind(samples,s)
  n<- c(n,paste('S',i))
}


colnames(samples)=n

s.mean<- apply(samples,2,mean)
s.sd<- apply(samples,2,sd)

samplemean<- mean(s.mean)
samplesd<- sd(s.mean)


popsd/sqrt(6)
