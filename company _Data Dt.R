

##About the data: 
  ##Let's consider a Company dataset with around 10 variables and 400 records. 
###The attributes are as follows: 
  ##??? Sales -- Unit sales (in thousands) at each location
##??? Competitor Price -- Price charged by competitor at each location
##??? Income -- Community income level (in thousands of dollars)
##??? Advertising -- Local advertising budget for company at each location (in thousands of dollars)
##??? Population -- Population size in region (in thousands)
##??? Price -- Price company charges for car seats at each site
##??? Shelf Location at stores -- A factor with levels Bad, Good and Medium indicating the quality of the shelving location for the car seats at each site
##??? Age -- Average age of the local population
##??? Education -- Education level at each location
##??? Urban -- A factor with levels No and Yes to indicate whether the store is in an urban or rural location
##??? US -- A factor with levels No and Yes to indicate whether the store is in the US or not
##The company dataset looks like this: 
  
  ##Problem Statement:
  ##A cloth manufacturing company is interested to know about the segment or attributes causes high sale. 
##Approach - A decision tree can be built with target variable Sale (we will first convert it in categorical variable) & all other variable will be independent in the analysis.  


str(Company_Data)
library(caret)
library(C50)
set.seed(7)
sum(is.na(Company_Data))
rm <- Company_Data[,1]
?ifelse()
min(Company_Data$Sales)
max(Company_Data$Sales)
Company_new <- ifelse(rm >=8,"High Sales","Low Sales")
Company_new_data <- cbind(Company_Data,Company_new)
View(Company_new_data )
inTraininglocal <- createDataPartition(Company_new_data$Sales,p=0.7,list=F)
training <-Company_new_data[inTraininglocal,]
test <- Company_new_data[-inTraininglocal,]
model <- C5.0(factor(Sales)~.,data=Company_new_data)

pred<-predict.C5.0(model,test[,-1])
a<-table(test$Sales,pred)
sum(diag(a))/sum(a)
plot(model)
