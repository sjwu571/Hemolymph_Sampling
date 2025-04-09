# Data, W_control vs W_Treatment
list1 <- c(males = 24, females = 14, hermaphrodites = 4)
list2 <- c(males = 27, females = 14, hermaphrodites = 1)

# Creating a contingency table
contingency_table <- matrix(c(list1, list2), nrow = 2, byrow = TRUE)
colnames(contingency_table) <- c("Males", "Females", "Hermaphrodites")
rownames(contingency_table) <- c("List1", "List2")

# Performing the Chi-Square test
chi_square_test <- chisq.test(contingency_table)

# Results
chi_square_statistic <- chi_square_test$statistic
p_value <- chi_square_test$p.value

print(paste("Chi-Square Statistic:", chi_square_statistic))
print(paste("P-Value:", p_value))

# Interpretation
if (p_value < 0.05) {
  print("There is a significant difference in the sex ratios between the two lists.")
} else {
  print("There is no significant difference in the sex ratios between the two lists.")
}



# S_control vs S_treatment
list1 <- c(males = 10, females = 26, hermaphrodites = 2)
list2 <- c(males = 19, females = 14, hermaphrodites = 2)

# Creating a contingency table
contingency_table <- matrix(c(list1, list2), nrow = 2, byrow = TRUE)
colnames(contingency_table) <- c("Males", "Females", "Hermaphrodites")
rownames(contingency_table) <- c("List1", "List2")

# Performing the Chi-Square test
chi_square_test <- chisq.test(contingency_table)

# Results
chi_square_statistic <- chi_square_test$statistic
p_value <- chi_square_test$p.value

print(paste("Chi-Square Statistic:", chi_square_statistic))
print(paste("P-Value:", p_value))

# Interpretation
if (p_value < 0.05) {
  print("There is a significant difference in the sex ratios between the two lists.")
} else {
  print("There is no significant difference in the sex ratios between the two lists.")
}


# compare winter and summer, by merging ctrl and trt subgroups
# W vs. S
list1 <- c(males = 51, females = 28, hermaphrodites = 5)
list2 <- c(males = 29, females = 40, hermaphrodites = 4)

# Creating a contingency table
contingency_table <- matrix(c(list1, list2), nrow = 2, byrow = TRUE)
colnames(contingency_table) <- c("Males", "Females", "Hermaphrodites")
rownames(contingency_table) <- c("List1", "List2")

# Performing the Chi-Square test
chi_square_test <- chisq.test(contingency_table)

# Results
chi_square_statistic <- chi_square_test$statistic
p_value <- chi_square_test$p.value

print(paste("Chi-Square Statistic:", chi_square_statistic))
print(paste("P-Value:", p_value))

# Interpretation
if (p_value < 0.05) {
  print("There is a significant difference in the sex ratios between the two lists.")
} else {
  print("There is no significant difference in the sex ratios between the two lists.")
}

