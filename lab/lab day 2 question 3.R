library(ggplot2)
library(tidyr)

# Create dataset
month <- c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct")
productA <- c(500,600,700,800,750,850,900,950,1000,1050)
productB <- c(300,320,350,400,420,450,480,500,550,580)
productC <- c(200,250,300,350,400,420,450,470,500,530)

sales_data <- data.frame(Month=month,
                         ProductA=productA,
                         ProductB=productB,
                         ProductC=productC)

# Convert to long format
sales_long <- pivot_longer(sales_data,
                           cols = c(ProductA, ProductB, ProductC),
                           names_to = "Product",
                           values_to = "Sales")

# Plot
ggplot(sales_long, aes(x=Month, y=Sales, color=Product, group=Product)) +
  geom_line(size=1) +
  geom_point(size=2) +
  labs(title="Monthly Sales Performance",
       x="Month",
       y="Sales") +
  theme_minimal()