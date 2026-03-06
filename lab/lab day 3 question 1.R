# Create Data
weather <- data.frame(
  Date = as.Date(c("2023-01-01","2023-01-02","2023-01-03","2023-01-04","2023-01-05")),
  Temperature = c(10,12,8,15,14),
  Humidity = c(75,70,80,65,72),
  WindSpeed = c(15,12,18,20,16)
)

# 3D Scatter Plot
plot_ly(weather, x=~Humidity, y=~WindSpeed, z=~Temperature,
        type="scatter3d", mode="markers")

# 3D Surface Plot
plot_ly(weather, x=~Humidity, y=~WindSpeed, z=~Temperature,
        type="mesh3d")

# Temperature vs Humidity
plot_ly(weather, x=~Humidity, y=~Temperature,
        type="scatter3d", mode="markers")

# Temperature vs Wind Speed
plot_ly(weather, x=~WindSpeed, y=~Temperature,
        type="scatter3d", mode="markers")