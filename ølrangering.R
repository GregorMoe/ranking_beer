Y   <- c(6,7,5,4,8,7,6)
bev <- c("cola","cola","beer","beer","wine","wine","beer")
k   <- seq_along(Y)
Y_lag <- c(NA, Y[-length(Y)])

df <- data.frame(
  Y = Y,
  Y_lag = Y_lag,
  k = k,
  bev = bev
)

df <- na.omit(df)


fit <- lm(Y ~ Y_lag + k + bev + Y_lag*bev, data = df)
summary(fit)
