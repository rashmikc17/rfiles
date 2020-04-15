# [4] Split the dataset into training and test in 70:30 ratio such that the Gender ratio is maintained. Instead implement the logic in your own way.

# Function to one hot encode
train_test_split <- function(x,npar=TRUE,print=TRUE) {
  
  ## 70% of the sample size
  smp_size <- floor(0.70 * nrow(my_data))
  
  ## set the seed to make your partition reproducible
  set.seed(123)
  train_ind <- sample(seq_len(nrow(my_data)), size = smp_size)
  
  train <- my_data[train_ind, ]
  test <- my_data[-train_ind, ]
  print(train)
  print("##########")
  print(test)
}

# invoking the function
set.seed(1234)
train_test_split(my_data)
