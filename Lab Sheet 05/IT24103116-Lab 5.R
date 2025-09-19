setwd("C:\\Users\\USER\\Downloads\\IT24100638")

delivery_times<- read.table("Exercise.txt", header = TRUE, sep = ",")

hist(delivery_times$Delivery_Time_.minutes.,
     breaks = seq(20,70, length.out = 10),
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Times",
     ylab = "Frequency")

freq<- hist(delivery_times$Delivery_Time_.minutes.,
            breaks = seq(20,70, length.out = 10),
            right = FALSE,
            plot = FALSE)

cum_freq<- cumsum(freq$counts)


plot(freq$breaks[-1],
     cum_freq,
     type = "l",
     main = "Cumulative Frequency Polygon",
     xlab = "Delivery Time",
     ylab = "Cumulative Freqency",
     ylim = c(0, max(cum_freq)))

grid()


