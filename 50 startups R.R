#ld a Neural Network model for 50_startups data to predict profit 
##### Neural Networks -----------------

#### Neural Networks -------------------
#50 startups
library(nnet)
startup <- `50_Startups`
startup_new<-startup[-4]
startup_new1<-startup[4]
normalize <- function(x) { 
  return((x - min(x)) / (max(x) - min(x)))
}
normstartup <- as.data.frame(lapply(startup_new, normalize))
startupcb<- cbind(normstartup,startup_new1)
#split the data 
library(caTools)
inTraininglocal <- sample.split(startupcb$Profit,SplitRatio=0.7)
training<-subset(startupcb,inTraininglocal==TRUE)
testing<-subset(startupcb,inTraininglocal==FALSE)

library(neuralnet)
model <- neuralnet(Profit ~ R.D.Spend+Administration+
                     Marketing.Spend,
                   data = training, hidden =c(5,2))
windows();
plot(model)
