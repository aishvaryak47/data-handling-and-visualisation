survey <- data.frame(
  Product = c("A","B","C","D","E"),
  Price = c(50,70,60,45,55),
  Rating = c(4.2,3.8,4.0,4.5,3.9),
  AgeGroup = c(1,2,3,4,1)  # Converted to numeric
)

# 3D Scatter Plot
plot_ly(survey, x=~Price, y=~AgeGroup, z=~Rating,
        type="scatter3d", mode="markers")

# 3D Surface Plot
plot_ly(survey, x=~Price, y=~AgeGroup, z=~Rating,
        type="mesh3d")

# Rating vs Price
plot_ly(survey, x=~Price, y=~Rating,
        type="scatter3d", mode="markers")

# Rating vs Age Group
plot_ly(survey, x=~AgeGroup, y=~Rating,
        type="scatter3d", mode="markers")