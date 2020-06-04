library(swirl)
swirl()
library(datasets)
head(airquality)
xyplot(Ozone ~ Wind, data = airquality, col = "red", pch = 8, main = "Big Apple Data")
xyplot(Ozone ~ Wind, data = airquality, pch=8, col="red", main="Big Apple Data")
xyplot(Ozone ~ Wind | as.factor(Month), data = airquality, layout = c(5,1))
xyplot(Ozone ~ Wind | Month, data = airquality, layout=c(5,1))

p <- xyplot(Ozone~Wind,data=airquality)
p
names(p)
names[myfull]

mynames[myfull]
p[["formula"]]
p[["x.limits"]]
table(f)
xyplot(y ~ x | f, layout = c(2, 1))
myedit("plot1.R")

source("plot1.R", local = TRUE)
source(pathtofile("plot2.R"),local=TRUE)

myedit("plot2.R")

str(diamonds)

table(diamonds$color)
table(diamonds$color, diamonds$cut)
myedit("myLabels.R")

source(pathtofile("myLabesl.R"), local = TRUE)
source(pathtofile("myLabels.R"),local=TRUE) 

xyplot(price~carat|color*cut,data=diamonds,strip=FALSE,pch=20,xlab=myxlab,ylab=myylab,main=mymain)
xyplot(price~carat|color*cut,data=diamonds,pch=20,xlab=myxlab,ylab=myylab,main=mymain)















