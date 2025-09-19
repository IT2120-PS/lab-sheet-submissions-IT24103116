setwd("C:/Users/Lavindu/OneDrive/Desktop/PS LABS")
getwd()

dbinom(40,44,0.92)

pbinom(35,44,0.92,lower.tail = TRUE)

1-pbinom(37,44,0.92,lower.tail = TRUE)

pbinom(37,44,0.92,lower.tail = FALSE)

pbinom(42,44,0.92,lower.tail = TRUE) -pbinom(39,44,0.92,lower.tail = TRUE)

dpois(6,5)

ppois(6,5,lower.tail = FALSE)

##excercise##

##1.i.Binomial Distribution##

1-pbinom(47,50,0.85,lower.tail = TRUE)-pbinom(47,50,0.85,lower.tail=FALSE)


##2.i.poisson distribution##

dpois(5,12)