#[2] Convert the numeric columns into their z scores using your own function instead of available R functions

# Function to calculate Z Score
zScore_UD <- function(x,npar=TRUE,print=TRUE) {
  mn <- sum(x)/length(x)
  sd <- sqrt(sum((x - (sum(x)/length(x)))^2) / (length(x) - 1))
  result <- (x - mn)/sd
  print(result)
  return(result)
}

# invoking the function
set.seed(1234)
zScore_UD(my_data$Marks)
