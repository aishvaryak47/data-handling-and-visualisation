library(ggplot2)
library(dplyr)

# Create dataset
week <- as.Date(c("2023-01-01","2023-01-01","2023-01-01",
                  "2023-01-08","2023-01-08","2023-01-08",
                  "2023-01-15","2023-01-15","2023-01-15"))

city <- c("New York","Los Angeles","Chicago",
          "New York","Los Angeles","Chicago",
          "New York","Los Angeles","Chicago")

avg_temp <- c(-2,15,-5,0,17,-3,2,18,-2)

temp_data <- data.frame(Week=week, City=city, Avg_Temp=avg_temp)

# Plot
ggplot(temp_data, aes(x=Week, y=Avg_Temp, color=City)) +
  geom_line(size=1) +
  geom_point(size=2) +
  labs(title="Weekly Average Temperature",
       x="Week",
       y="Temperature (°C)") +
  theme_minimal()