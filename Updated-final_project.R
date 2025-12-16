# Set working directory
setwd("/courses/STA145/buzugbn1")

library(readr)
data <- read_csv("data.csv")


# Descriptive Statistics 
#qual var
table(data$party)
table(data$education)

# contingency table
table(data$party,data$education)

# chi-squared test
table(data$party,data$education)
## STA 145 / 215 Final Project – US Governors
## Research Question: Does education level impact party affiliation?

# Load packages
library(readr)

# Load data
governors <- read_csv("Copy of Table Templates file-Data table tabular(1).csv")

# View data
View(governors)

# Convert variables to factors
governors$party <- as.factor(governors$party)
governors$education <- as.factor(governors$education)

# -----------------------------
# Table 1: Contingency Table
# -----------------------------
party_edu_table <- table(governors$party, governors$education)
print("Contingency Table: Party vs Education")
print(party_edu_table)

# -----------------------------
# Chi-Square Test
# -----------------------------
chi_test <- chisq.test(party_edu_table)
print("Chi-Square Test Results")
print(chi_test)

# Interpretation
if(chi_test$p.value < 0.05){
  cat("Significant association: Education level may impact party affiliation.\n")
} else {
  cat("No significant association: Education level does not appear to impact party affiliation.\n")
