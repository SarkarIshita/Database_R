#####################Perform Clustering for the crime data and identify the number of clusters formed and draw inferences.

#####Data Description:
####  Murder -- Muder rates in different places of United States
#####Assualt- Assualt rate in different places of United States
#####UrbanPop - urban population in different places of United States
#######Rape - Rape rate in different places of United States################

#Data load
mycrime1<-read.csv("E:/R files/R programs/crime_data.csv")
View(mycrime1)

################################ 
#### Scale function to standardize the data via Z scores
mycrime <- scale(mycrime1[,2:5])
mycrime

d <- dist(mycrime, method = "euclidean") #Computing the distance natrix
fit <- hclust(d, method="average") # Building the algorithm # try with 'centroid'
plot(fit) # display dendogram
clusters <- cutree(fit, k=4) # cut tree into 4 clusters
# draw dendogram with red borders around the 4 clusters 
rect.hclust(fit, k=4, border="red")
#Attach the cluster numbers 
clusters=data.frame('crimeregion'=mycrime1[,1],'Cluster'=clusters)
?data.frame()
View(clusters)
