set.seed(1997)
install.packages("LaplacesDemon")
set.seed(1997)
library(LaplacesDemon)
noises <-data.frame(rlaplace(5, location=0, scale=2))
dpqueries <- data.frame(3 + noises)
mean(dpqueries$rlaplace.5..location...0..scale...2.)
##Output from dpqueries
mean(1.706347,3.6105366,5.0134263,  4.4514077, 0.3699189)

##Check averagee
sum <- sum(1.706347,3.6105366,5.0134263,  4.4514077, 0.3699189)
sum/5 ## = 3.03027


##Check  95% Confidence interval
df5 <- data.frame(1.706347,3.6105366,5.0134263,  4.4514077, 0.3699189)
df_transpose = t(df)
t.test(df_transpose)


##Check confidence interval with larger # of queries.
df50 <- rlaplace(50, location=0, scale=2)
df50 <- data.frame(df50)
df50.3 <- data.frame(df50)+3
t.test(df50.3)

df100 <- rlaplace(100, location=0, scale=2)
df100 <- data.frame(df100)
df100.3 <- data.frame(df100)+3
t.test(df100.3)

df250 <- rlaplace(250, location=0, scale=2)
df250 <- data.frame(df250)
df250.3 <- data.frame(df250)+3
t.test(df250.3)

