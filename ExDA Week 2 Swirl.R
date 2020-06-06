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

sample(colours(), 10)
sample(colors(),10) 
pal <- colorRamp(c("red", "blue"))
pal(0)
pal(1)
pal(seq(0,1,len=6))

p1 <- colorRampPalette(c("red", "blue"))
p1(2)
p1(6)

0xcc

p2 <- colorRampPalette(c("red", "yellow"))
p2(2)
p2(10)

showMe(p1(20))
showMe(p2(20))
showMe(p2(2))

p1
?fun
?rgb
p3 <- colorRampPalette(c("blue","green"),alpha=.5)
p3(5)

plot(x, y, pch = 19, col = rgb(0,0.5,0.5,0.3))

cols <- brewer.pal(3, "BuGn")
showMe(cols)

pal <- colorRampPalette(cols)
showMe(pal(20))
library(datasets)
image(volcano, col = pal(20))
image(volcano, col = p1(20))


str(mpg)

qplot(displ, hwy, data = mpg, color = drv, geom = c("point", "smooth"))
qplot(displ, hwy, data = mpg, color = drv)

qplot(y=hwy, data = mpg, color = drv)

#What's this plot showing? We see the x-axis ranges from 0 to 250 and we remember that we had 234 data points in our
# set, so we can infer that each point in the plot represents one of the hwy values (indicated by the y-axis). We've
# created the vector myhigh for you which contains the hwy data from the mpg dataset. Look at myhigh now.

myhigh

qplot(drv, hwy, data = mpg, geom = "boxplot", color = manufacturer)

qplot(hwy, data = mpg, fill = drv)

qplot(displ, hwy, data = mpg, facets = . ~ drv)

qplot(hwy, data = mpg, facets = drv ~ ., binwidth = 2)


qplot(displ, hwy, data = mpg, geom = c("point", "smooth"), facets = . ~ drv)

g <- ggplot(data = mpg, aes(displ, hwy))
## if you pu displ and hwy within quotes, aes will think that they are axes labels

summary(g)
g + geom_point() + geom_smooth(method = "lm") + facet_grid(. ~ drv) + ggtitle("Swirl Rules!")
g + geom_point(color = "pink", size = 4, alpha = 1/2)
g+geom_point(color="pink",size=4,alpha=1/2)

g + geom_point(size = 4, alpha = 1/2, aes(color = drv))
g + geom_point(aes(color = drv)) + labs(title = "Swirl Rules!") + labs(x = "Displacement", y = "Hwy Mileage")
g + geom_point(aes(color = drv), size = 2, alpha = 1/2) + geom_smooth(method = "lm", se = FALSE, linetype = 3, size = 4)
g + geom_point(aes(color = drv), size = 2, alpha = 1/2) + geom_smooth(size = 4, linetype = 3, method = "lm", se = FALSE)
g + geom_point(aes(color = drv)) + theme_bw(base_family = "Times")

plot(myx, myy, type = "l", ylim = c(-3,3))

g <- ggplot(data = testdat, aes(myx, myy))
g + geom_line() + ylim(-3, 3)
g + geom_line() + coord_cartesian(ylim = c(-3,3))

g <- ggplot(data = mpg, aes(displ, hwy, color = factor(year)))
g + geom_point() + facet_grid(drv ~ cyl, margins = TRUE) + geom_smooth(method = "lm", se = FALSE, size = 2, color = "black") + labs(x = "Displacement", y = "Highway Mileage", title = "Swirl Rules!")
##margins guves the totals over the columns and rows


diamonds
str(diamonds)
qplot(price, data = diamonds, binwidth = 18497 / 30, fill = cut)
range(diamonds$price)
brk
counts
qplot(price, data = diamonds, geom = "density", color = cut)
qplot(carat, price, data = diamonds, color = cut, aes(geom_smooth(method = "lm"))) ##this is incorrect

qplot(carat, price, data = diamonds, color=cut, facets = . ~ cut) + geom_smooth(method = "lm")


g <- ggplot(data = diamonds, aes(depth, price))
summary(g)
g + geom_point(alpha = 1 / 3) + facet_grid(cut ~ car2) + geom_smooth(method = "lm", size = 3, color = "pink")

cutpoints <- quantile(diamonds$carat, seq(0, 1, length = 4), na.rm = TRUE)
cutpoints
diamonds$car2 <- cut(diamonds$carat, cutpoints)

diamonds[myd, ]

ggplot(data = diamonds, aes(carat, price)) + geom_boxplot() + facet_grid(. ~ cut)

















