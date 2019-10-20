Day <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")
Built_up <- c(88, 100, 76, 98, 103, 85, 69)
Non_built_up <- c(70, 58, 59, 53, 56, 94, 102)

motorcycleAccidentsDF <- data.frame(Day, Built_up, Non_built_up)

# a.
avg_built_up <- mean_func(motorcycleAccidentsDF$Built_up)
print(avg_built_up)

avg_non_built_up <- mean_func(motorcycleAccidentsDF$Non_built_up)
print(avg_non_built_up)

median_built_up <- median_func(motorcycleAccidentsDF$Built_up)
print(median_built_up)

median_non_built_up <- median_func(motorcycleAccidentsDF$Non_built_up)
print(median_non_built_up)

# b. // TODO

mean_func <- function(x) {
  sum(x)/length(x)
}

median_func <- function(x) {
  sorted <- sort(x)
  n <- length(x_sorted)
  
  if(n %% 2 == 0) {
    return(mean(sorted[n/2 + c(0, 1)]))
  } else {
    return(sorted[round(n/2 + 0.25)])
  }
}


