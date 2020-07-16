# Predict Price of the computer
#A dataframe containing :
#price : price in US dollars of 486 PCs
#speed : clock speed in MHz
#hd : size of hard drive in MB
#ram : size of Ram in in MB
#screen : size of screen in inches
#cd : is a CD-ROM present ?
# multi : is a multimedia kit (speakers, sound card) included ?
#premium : is the manufacturer was a "premium" firm (IBM, COMPAQ) ?
#ads : number of 486 price listings for each month
#trend : time trend indicating month starting from January of 1993 to November of 1995.

computer <- read.csv("E:/R files/assignments/Multiple Linear Regression/Computer_Data (2).csv")
computer1 <- computer[,2:length(computer)]
pairs(computer1)
cor(computer1[,c(1:5,9,10)])
#Regression model and summary
model.comp <- lm(price~.,data=computer1)
summary(model.comp)

##Multi-colinearity
#install.packages("car")
library(car)
car::vif(model.comp)
##Subset selection
library(MASS)
stepAIC(model.comp)
#Model Building
#Regression Model and Summary
model.comp<-lm(price~.,data = computer1)
#Diagnostic Plots:
#Residual Plots, QQ-Plos, Std. Residuals vs Fitted
plot(model.comp) 
#Residuals vs Regressors
library(car)
residualPlots(model.comp)
#Added Variable Plots
avPlots(model.comp)
#QQ plots of studentized residuals
qqPlot(model.comp)
#Deletion Diagnostics
influenceIndexPlot(model.comp) # Index Plots of the influence measures
#iteration
computer2<-computer1[-c(1701,1441),]
model2<-lm(price~.,data = computer2)
summary(model2)
plot(model2) 
residualPlots(model2)
qqPlot(model2)
influenceIndexPlot(model2)

