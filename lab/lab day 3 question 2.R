market <- data.frame(
  Date = as.Date(c("2023-01-01","2023-01-02","2023-01-03","2023-01-04","2023-01-05")),
  StockPrice = c(100,102,98,105,108),
  Volume = c(2.5,3.0,2.2,2.8,3.5),
  MarketCap = c(500,510,490,525,540)
)

# 3D Scatter Plot
plot_ly(market, x=~Volume, y=~MarketCap, z=~StockPrice,
        type="scatter3d", mode="markers")

# 3D Surface Plot
plot_ly(market, x=~StockPrice, y=~Volume, z=~MarketCap,
        type="mesh3d")

# Stock Price vs Volume
plot_ly(market, x=~Volume, y=~StockPrice,
        type="scatter3d", mode="markers")

# Stock Price vs Market Cap
plot_ly(market, x=~MarketCap, y=~StockPrice,
        type="scatter3d", mode="markers")