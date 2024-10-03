#Codigo para problema 2
mis_dades <- iris
mis_dades

x <- mis_dades$Petal.Length
x

y <- mis_dades$Sepal.Length
y

plot(x,y)

x_ <- mean(x)
x_

y_ <- mean(y)
y_

m <- sum((x-x_)*(y-y_))/sum((x-x_)^2)
m

b <- y_ - m*x_
b

m*1.5+b

#predicción sobre las observaciones
y_pred <- m*x+b
plot(x,y)
lines(x,y_pred)

#coef. determinación(R^2)
R_sq=sum((y_pred-y_)^2)/sum((y-y_)^2)
R_sq

#100% predicción --> R^2=1
#0% predicción --> R^2=0

#coef.correlación --> RAIZ(R)
cor.test(x,y)


#USANDO FUNCIONES DE R
mood <- lm(y~x)

summary(mood)

