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

chisq.test(table(data$party,data$education))