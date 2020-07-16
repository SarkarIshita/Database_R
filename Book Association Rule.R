#### Prepare rules for the all the data sets 
#### 1) Try different values of support and confidence. Observe the change in number of rules for different support,confidence values
#### 2) Change the minimum length in apriori algorithm
### 3) Visulize the obtained rules using different plots 


library(arules)
Book<-read.csv("E:/R files/assignments/Association Rules/book.csv")
Book1 <- as.matrix(Book)
rules <- apriori(Book1)
arules::inspect(rules)
rules.sorted <- sort(rules, by="lift")
arules::inspect(rules.sorted)
# rules 
rules <- apriori(Book1,parameter = list(supp=0.1, conf=0.5))
arules::inspect(rules)
### Visualizations
library(arulesViz)
windows() 
plot(rules,method = "scatterplot")
plot(rules,method = "grouped")
plot(rules,method = "graph")