# [3] Implement one hot encoding using your own function to encode Gender 

# Function to one hot encode
ohe_UD <- function(x,npar=TRUE,print=TRUE) {
  new_my_data <- x
  FactoredVariable = factor(new_my_data$Gender) 
  dumm = as.data.frame(model.matrix(~FactoredVariable)[,-1])
  dfWithDummies = cbind(my_data, dumm) 
  head(dfWithDummies)
  return(dfWithDummies)
}

# invoking the function
set.seed(1234)
ohe_UD(my_data)
