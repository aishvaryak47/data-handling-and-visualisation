library(ggplot2)

# Create dataset
month <- c("Jan","Jan","Jan","Feb","Feb","Feb","Mar","Mar","Mar")
employee <- c("A","B","C","A","B","C","A","B","C")
score <- c(85,90,78,88,92,80,90,94,82)

performance_data <- data.frame(Month=month,
                               Employee=employee,
                               Score=score)

# Histogram
ggplot(performance_data, aes(x=Score, fill=Employee)) +
  geom_histogram(binwidth=5, alpha=0.6, position="identity") +
  labs(title="Employee Performance Score Distribution",
       x="Score",
       y="Frequency") +
  theme_minimal()