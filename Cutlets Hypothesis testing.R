##########   Hypothesis Testing ###############################
#####A F&B manager wants to determine whether there is any significant difference in the diameter of the cutlet between two units. 
#####A randomly selected samle of cutlets was collected from both units and measured? 
#####  Analyze the data and draw inferences at 5% significance level.
#######Please state the assumptions and tests that you carried out to check validity of the assumptions.

#### Two sample Two tail test

x <- read.csv("E:/R files/assignments/Hypothesis Testing/Cutlets.csv")

View(x)

z <- x[,1]
y <- x[,2]
?t.test()
t.test(z,y,alternative="two.sided",conf.level = 0.95)


########### Null hypothesis cant be rejected as p > 0.05 and thus both the units dont differ in diameter.
