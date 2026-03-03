library(ggplot2)
library(tidyr)

# Create dataset
category <- c("Product Quality", "Customer Service", "Value for Money")

very_dissatisfied <- c(5,10,8)
dissatisfied <- c(15,20,12)
neutral <- c(25,30,28)
satisfied <- c(35,25,32)
very_satisfied <- c(20,15,20)

survey_data <- data.frame(Category=category,
                          Very_Dissatisfied=very_dissatisfied,
                          Dissatisfied=dissatisfied,
                          Neutral=neutral,
                          Satisfied=satisfied,
                          Very_Satisfied=very_satisfied)

# Convert to long format
survey_long <- pivot_longer(survey_data,
                            cols = -Category,
                            names_to = "Rating",
                            values_to = "Count")

# Stacked Bar Plot
ggplot(survey_long, aes(x=Category, y=Count, fill=Rating)) +
  geom_bar(stat="identity") +
  labs(title="Customer Satisfaction Survey Results",
       x="Category",
       y="Number of Responses") +
  theme_minimal()