set.seed(1)

v1 <- rnorm(100, 10, 1)
v2 <- runif(100, 5, 15)
v3 <- c(rnorm(100,5,1),rnorm(100,15,1))
v4 <- rchisq(100, 10) + 25*rbinom(100,1,0.1)

par(mfrow=c(2,2))
hist(v1, breaks=10, main="Histogram A", xlab="", ylab="")
hist(v2, breaks=10, main="Histogram B", xlab="", ylab="")
hist(v3, breaks=10, main="Histogram C", xlab="", ylab="")
hist(v4, breaks=10, main="Histogram D", xlab="", ylab="")
par(mfrow=c(1,1))