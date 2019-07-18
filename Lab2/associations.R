set.seed(0)

x1 <- seq(1,25,length.out=100)+rnorm(100)
y1 <- seq(1,25,length.out=100)+rnorm(100)

x2 <- x1
y2 <- (y1^4)/(25^3)

x3 <- runif(100,0,25)
y3 <- runif(100,0,25) 

x4 <- x1
y4 <- -y1

par(mfrow=c(2,2))
plot(x1,y1,main="Scatterplot A",xlab="x",ylab="y")
plot(x2,y2,main="Scatterplot B",xlab="x",ylab="y")
plot(x3,y3,main="Scatterplot C",xlab="x",ylab="y")
plot(x4,y4,main="Scatterplot D",xlab="x",ylab="y")
