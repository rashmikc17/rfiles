# [5] Consider Marks as Label (Y) and Attendance as Feature (X). Implement a function that executes gradient descent algorithm to estimate the coefficient and bias in Y = wX+b. Also print the MSE at the end of this estimation. Restrict the algorithm to try 100 iterations.


gradientDesc <- function(x, y, learn_rate, conv_threshold, n, max_iter) {
  plot(x, y, col = "blue", pch = 20)
  m <- runif(1, 0, 1)
  c <- runif(1, 0, 1)
  yhat <- m * x + c
  MSE <- sum((y - yhat) ^ 2) / n
  converged = F
  iterations = 0
  while(converged == F) {
    ## Implement the gradient descent algorithm
    m_new <- m - learn_rate * ((1 / n) * (sum((yhat - y) * x)))
    c_new <- c - learn_rate * ((1 / n) * (sum(yhat - y)))
    m <- m_new
    c <- c_new
    yhat <- m * x + c
    MSE_new <- sum((y - yhat) ^ 2) / n
    if(MSE - MSE_new <= conv_threshold) {
      abline(c, m) 
      converged = T
      print(paste("Optimal MSE:",MSE_new))
      return(paste("Optimal intercept:", c, "Optimal slope:", m))
    }
    iterations = iterations + 1
    if(iterations > max_iter) { 
      abline(c, m) 
      converged = T
      return(paste("Optimal intercept:", c, "Optimal slope:", m))
    }
  }
}


# invoking the function
set.seed(1234)
gradientDesc(my_data$Attendance,my_data$Marks, 0.01, 0.001, length(my_data$Attendance), 100)

