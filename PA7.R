# PA7.R
# James Davon Austin
# 10/25/2026
# Calculates probabilities, quantiles, and Z-scores for blade lengths.

# Define the normal distribution parameters
mean_value <- 10
variance <- 2
sd_value <- sqrt(variance)

# Find the probability that blade length is between 9.5 and 11 mm
lower_bound <- 9.5
upper_bound <- 11

probability <- pnorm(upper_bound, mean_value, sd_value) -
  pnorm(lower_bound, mean_value, sd_value)

cat("Probability blade is between 9.5 and 11 mm:", probability, "\n")

# Standardize 9.5 and 11 and confirm the probability
lower_z <- (lower_bound - mean_value) / sd_value
upper_z <- (upper_bound - mean_value) / sd_value

z_probability <- pnorm(upper_z) - pnorm(lower_z)

cat("Probability from Z-scores for 9.5 and 11 mm:", z_probability, "\n")

# Find the blade length corresponding to the shortest 2.5 percent
shortest_length <- qnorm(0.025, mean_value, sd_value)

cat("Blade length below shortest 2.5%:", shortest_length, "mm\n")

# Standardize the shortest 2.5 percent blade length
shortest_z <- (shortest_length - mean_value) / sd_value

cat("Z-score of shortest 2.5% blade:", shortest_z, "\n")