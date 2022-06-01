## Evaluation practice unit 4, data mining course.  

[PDF link](https://github.com/Saul12344/mineria-de-datos/blob/unit_4/evaluation%20practice/Pr%C3%A1ctica%20evaluatoria%2C%20unidad%204%2C%20mineria%20de%20datos.pdf)  
[.R File](https://github.com/Saul12344/mineria-de-datos/blob/unit_4/evaluation%20practice/u4%20final.R)  

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
kmeans

 y_kmeans = kmeans$cluster
 y_kmeans

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
## These were the results using elbow method to determine the number of clusters (3).  
![elbow](/images/elbow.PNG)  

## And these were the clusters we got using the k means method.  

![clusters](/images/clusters.PNG)  



## Conclusions.  


## Edgar Munguia:  
Using this algorithm, allow us to cluster the data and find points with less errors, i mean, this model will want precision over all things, this is a good thing if we want to cluster data with the minimal error possible. Once again, spark its a powerful tool to work with big data, as we can see, it allow us to work with a lot of info and also allow us to work with less errors that using other tools.


## Saul Higuera:  
This is a super useful method. Remember that the basic idea behind partitioning methods, such as k-means clustering, is to define the clusters in such a way that the total variation within the cluster is minimized.
The Elbow method analyzes the total WSS as a function of the number of groups.

## Video link (Youtube)  
https://www.youtube.com/watch?v=bvDxIgLKr00

## GitHub repository link:  
https://github.com/Saul12344/mineria-de-datos
