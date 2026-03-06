environment <- data.frame(
  Location = c("A","B","C","D","E"),
  Temperature = c(15,20,18,12,17),
  Humidity = c(65,70,68,60,72),
  CO2 = c(400,450,420,380,430)
)

# 3D Scatter Plot
plot_ly(environment, x=~Temperature, y=~Humidity, z=~CO2,
        type="scatter3d", mode="markers")

# 3D Surface Plot
plot_ly(environment, x=~Temperature, y=~Humidity, z=~CO2,
        type="mesh3d")

# CO2 vs Temperature
plot_ly(environment, x=~Temperature, y=~CO2,
        type="scatter3d", mode="markers")

# CO2 vs Humidity
plot_ly(environment, x=~Humidity, y=~CO2,
        type="scatter3d", mode="markers")