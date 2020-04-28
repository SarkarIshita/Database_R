
###  Linear Regression Model for AT as dependent and Waist as independent variable

tissue <- read.csv("E:/R files/WC_AT.csv") ## importing the data set
View(tissue)
?lm()
model<- lm(AT~Waist,data =tissue) ## lm(y~x,data) 
summary(model)
new_tissue=data.frame(Waist=c(40,70,200)) ## creating data frame
tiss1=predict(model,newdata=new_tissue) ## predicting the model 
tiss1
pred <- predict(model)
pred
pred <- predict(model)
finaldata <- data.frame(tissue,pred,"Error"=tissue$AT-pred)
finaldata

