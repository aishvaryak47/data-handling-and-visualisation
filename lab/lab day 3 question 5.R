academic <- data.frame(
  Student = c("A","B","C","D","E"),
  Math = c(85,72,90,78,88),
  Science = c(78,85,80,75,82),
  Attendance = c(95,92,98,85,93)
)

# 3D Scatter Plot
plot_ly(academic, x=~Math, y=~Attendance, z=~Science,
        type="scatter3d", mode="markers")

# 3D Surface Plot
plot_ly(academic, x=~Math, y=~Attendance, z=~Science,
        type="mesh3d")

# Science vs Math
plot_ly(academic, x=~Math, y=~Science,
        type="scatter3d", mode="markers")

# Science vs Attendance
plot_ly(academic, x=~Attendance, y=~Science,
        type="scatter3d", mode="markers")