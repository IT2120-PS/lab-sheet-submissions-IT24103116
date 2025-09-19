  setwd("C:\\Users\\it24103116\\Desktop\\IT24103116")
  
  branch_data<- read.table("Exercise.txt",header = TRUE,sep = ",")
  head(branch_data)
  
  #Branch-> Categorical(Nominal)
  #Sales-> Quantitative(Ratio)
  #Advertising-> Quantitative(Ratio)
  #Years-> Quantitative(Ratio/Discrete)
  
  boxplot(branch_data$Sales_X1,
          main = "Boxplot of Sales",
          ylab = "Sales",
          horizontal = TRUE,
          outline = TRUE)
  
  summary(branch_data$Advertising_X2)
  IQR(branch_data$Advertising_X2)
  
  get.outliers<- function(x){
    Q1<- quantile(x) [2]
    Q3<- quantile(x) [4]
    IQR<- Q3-Q1
    
    upper<- Q3+1.5*IQR
    lower<- Q1-1.5*IQR
    
    print(paste("Upper Bound =",upper))
    print(paste("Lower Bound =",lower))
    
    print(paste("Outliers:",paste(sort(x[x<lower | x>upper]),collapse = ",")))
  }
  
  
  get.outliers(branch_data$Years_X3)
