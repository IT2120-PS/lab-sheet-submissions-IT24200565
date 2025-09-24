getwd()
setwd('C:\\Users\\IT241000125\\Desktop\\IT241000125 Lab 08')
getwd()

nicotine <- c(1.09, 1.74, 1.58, 2.11, 1.64, 1.79, 1.37, 1.75, 1.92, 1.47,
              2.03, 1.86, 0.72, 2.46, 1.93, 1.63, 2.31, 1.97, 1.7, 1.9,
              1.69, 1.88, 1.4, 2.37, 1.79, 0.85, 2.17, 1.68, 1.85, 2.08,
              1.64, 1.75, 2.28, 1.24, 2.55, 1.51, 1.82, 1.67, 2.09, 1.69)


pop_mean <- mean(nicotine)
pop_var <- var(nicotine)

cat("Population Mean:", pop_mean, "\n")
cat("Population Variance:", pop_var, "\n")

set.seed(123)  # For reproducibility
sample_means <- numeric(30)
sample_vars <- numeric(30)

for (i in 1:25) {
  sample <- sample(nicotine, size = 6, replace = TRUE)
  sample_means[i] <- mean(sample)
  sample_vars[i] <- var(sample)
}

mean(sample_means)
sd(sample_means)
