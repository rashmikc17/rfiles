# Read a csv, named "data"
my_data <- read.csv("data.csv")
my_data

head(my_data)



# [1] Compute the MEAN, STDEV of the numeric columns. Do not use available R functions but create your own script. 


# Function to calculate mean
mean_UD <- function(x,npar=TRUE,print=TRUE) {
  result <- sum(x)/length(x)
  print(result)
  return(result)
}

# Function to calculate mean
standardDeviation_UD <- function(x,npar=TRUE,print=TRUE) {
  result <- sqrt(sum((x - (sum(x)/length(x)))^2) / (length(x) - 1))
  print(result)
  return(result)
}

# invoking the function
set.seed(1234)
mean_UD(my_data$Marks)
standardDeviation_UD(my_data$Marks)