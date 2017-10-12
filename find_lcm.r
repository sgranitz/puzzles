# Find the least common multiple of 1 to x

is_prime <- function(n) {
  x <- NULL
  for (i in 1:length(n)) {
    x[i] <- n[i] == 2 || 
      all(n[i] %% 2:ceiling(sqrt(n[i])) != 0)
  }
  x
}

find_lcm <- function(max) {
  if (max < 1) return(print("Max must be > 0"))
  
  # Define vector of interest
  vec <- 1:max
  
  # Find primes in defined array
  primes <- vec[is_prime(vec)]
  fac <- NULL
  upper <- ceiling(log(max, base = 2))
  
  # Find max power of primes that exist in defined array
  for (i in 1:length(primes)) {
    fac[i] <- max(intersect(primes[i]^(1:upper), vec))
  }
  
  # Return cumulative product of the selected factors
  # This is the least common multiple of the defined array
  tail(cumprod(fac), 1)
}

max <- 10
find_lcm(max)
# 2520

# Validate the lcm
sum(find_lcm(max) %% 1:max)
# 0
