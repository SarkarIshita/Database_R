data("quakes") # extracting the data set quakes
head(quakes) # first 6 rows
tail(quakes) # first 6 colums
quakes[ ,c(1,2)] # printing the all the rows and 1nd 2nd column
quakes$lat
summary(quakes) # summary of the data set 
plot(quakes$depth) 
plot(quakes$depth,quakes$mag)
plot(quakes)
# plot and lines
plot(quakes$mag,type='b')
plot(quakes$depth,quakes$mag,xlab="depth",ylab="magnitude",main="Variation of magnitude with depth",type='p',col='blue')
barplot(quakes$mag,main="mag",horiz =F,col='blue')
barplot(quakes$depth, main = 'Depth',
        xlab = 'Depth levels', col= 'blue',horiz = F)
# histogram
attach(quakes)
hist(stations)
hist(stations,main="Different stations",xlab="No of stations",col='Red')
boxplot(quakes)
boxplot(quakes[,c(1:5)],main="Multiple")

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=1, bty="o")
plot(stations)
sd(depth,na.rm=T) # calculating the standard deviation of the depth column in data set quakes
