install.packages("rpart.plot")

library(rpart)
library(rpart.plot)

data(iris)
str(iris)
head(iris)

set.seed(50)
irisNew <- iris[order(runif(nrow(iris))),]

rpart (Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = iris , method="class")
m3 <- rpart (Species ~ ., data = irisNew[1:100,] , method="class")
rpart.plot(m3)

p3 <- predict(m3, irisNew[101:150,], type="class" )
table(irisNew[101:150,5],predicted=p3)
table(irisNew[101:150,5],p1)
