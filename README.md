## Evaluation practice unit 4, data mining course.  

[PDF link]()  
[.R File]()  

## Introduction.  
This practice, is the last one from data mining course, the main goal, it is to use k means in a dataframe to categorize data with no labels into groups, before starting, lets define what the algorithm means: Is a clustering method, which aims to divide a set of n observations into k groups in which each observation belongs to the group whose mean value is closest.  

## Code.  
~~~
# Importing the dataset
dataset = read.csv(file.choose())
dataset = dataset[1:4]


# Using the elbow method to find the optimal number of clusters
set.seed(6)
wcss = vector()
for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
plot(1:10,
     wcss,
     type = 'b',
     main = paste('The Elbow Method'),
     xlab = 'Number of clusters',
     ylab = 'WCSS')

# Fitting K-Means to the dataset
set.seed(29)
kmeans = kmeans(x = dataset, centers = 3)
y_kmeans = kmeans$cluster

# Visualising the clusters
install.packages('cluster')
library(cluster)
clusplot(dataset,
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of iris'),
         xlab = 'Lenght',
         ylab = 'Width')

~~~

## Output.  



## Conclusions.  


## Edgar Munguia:  


## Saul Higuera:  


## Video link (Youtube)  


## GitHub repository link:  
https://github.com/Saul12344/mineria-de-datos
