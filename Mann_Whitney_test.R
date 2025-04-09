# Raw data ( live and dead oyster hemocyte counts, cells/ml)
live <- c(1.43e5, 7.78e5, 2.1e5, 2.08e5, 2.9e5, 7.05e5, 6.78e5, 2.05e5)
dead <- c(1.65e5, 8.43e5, 5.85e5, 1.8e5, 1.88e5, 2.08e5, 1.59e5, 5.68e5)

# Log-transform
log_live <- log10(live)
log_dead <- log10(dead)

# Check normality
shapiro.test(log_live)
shapiro.test(log_dead) # significant from normal distribution

# If normal, perform t-test
#t.test(log_live, log_dead)

# If non-normal, perform Mann-Whitney U test
wilcox.test(live, dead)
