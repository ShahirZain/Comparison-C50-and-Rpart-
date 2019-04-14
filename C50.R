require(C50)

data(iris)
str(iris)
head(iris)

set.seed(50)
irisNew <- iris[order(runif(nrow(iris))),]

m1 <- C5.0(irisNew[1:100,-5] , irisNew[1:100,5])
summary(m1)
p1 <- predict(m1,irisNew[101:150,-5])
table(irisNew[101:150,5],p1)
cm <- as.matrix(table(irisNew[101:150,5],p1))
length(p1)
sum(diag(cm))/length(p1)
plot(m1)
