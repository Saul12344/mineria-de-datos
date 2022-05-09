# **Unit # 2 branch. Data Mining course.**  

## Practice#1.  
[PDF link](https://github.com/Saul12344/mineria-de-datos/blob/unit_2/practices/U2P1dm.pdf)  
[.R File](https://github.com/Saul12344/mineria-de-datos/blob/unit_2/practices/U2P1.R)  

## Steps.  

## 1-. Search for a data CSV source (up to you).  

## 2.- Read the data and analyse it using R.  
![logo](/dm_images/7.PNG)  
## 3.- Generate three plots with R that tell the story of the data, the first one be a scatter plot of points,the second that is a graph in facets and the third a graph that tells us something statistical like the distribution that the data has and that contains the layer themes.

## 3.1.- Dot scatter plot.  
![logo](/dm_images/8.PNG)  
![logo](/dm_images/8.1.PNG)  
## 3.2.- Facet graph.  
![logo](/dm_images/9.PNG)  
![logo](/dm_images/10.PNG)  
## 3.3.- Distribution graph.  

![logo](/dm_images/11.PNG)  


  

## Evaluation practice.
[PDF link](https://github.com/Saul12344/mineria-de-datos/blob/unit_2/evaluation%20practice/evaluation%20practice%20unit2.pdf)  
[.R File](https://github.com/Saul12344/mineria-de-datos/blob/unit_2/evaluation%20practice/evaluation%20practice%20u2.R)  

## Introduction.  
In unit 2 we learned more about the origin of the graphs, about their grammar among other things, as well as the types of probability distributions and statistics, without forgetting that we learned to generate graphs in the R studio of point dispersion, graph in facets and statistical graphs.
We continue with some things that we saw in unit 1 such as what it is to load csv files to use them as databases and also to install more packages.


## Steps.  


## 1.- Start the ggplot library to be able to create and visualize our plot.  
![logo](/dm_images/1.PNG)  

## 2.- Import the CSV file.  
![logo](/dm_images/2.PNG)  
csv<-read.csv(file.choose())

## 3.- We filter all the data, gender and name of the study.  
![logo](/dm_images/3.PNG)  
filtrogenero<-(csv$Genre=="action")|(csv$Genre=="adventure")|(csv$Genre=="animation")|(csv$Genre=="comedy")|(csv$Genre=="drama")

filtroestudios<-csv$Studio %in% c("Buena Vista Studios","Fox","Paramount Pictures","Sony","Universal","WB")

filtrogenero

filtroestudios


## 4.- Create a second dataframe based on filtered data.  
![logo](/dm_images/4.PNG)
![logo](/dm_images/4.1.PNG)  
csv2<-csv[filtrogenero & filtroestudios,]
csv2

## 5.- Creation of the graph.  
![logo](/dm_images/5.PNG)  
graf<-ggplot(data=csv2,aes(x=Genre,y=Gross...US))+geom_jitter(aes(size=Budget...mill.,colour=Studio))+geom_boxplot(alpha=0.8,outlier.color=NA)+scale_size_continuous(range=c(1, 3))+xlab("Genre")+ylab("Gross % US")+ggtitle("Domestic Gross % by Genre")+theme(axis.title.x=element_text(colour="Blue",size=17),axis.title.y=element_text(colour="Blue",size=17),axis.text.x=element_text(size=12),axis.text.y=element_text(size=12),plot.title=element_text(size=22),legend.title=element_text(size=12),text=element_text(family="mono"))   


## 6.- Show the graph.  
![logo](/dm_images/6.PNG)
![logo](/dm_images/6.1.PNG)  

graf+ xlab("Genre") + ylab("Gross % US") + ggtitle("Domestic Gross % by Genre")+theme(axis.title.x=element_text(family="mono",
color="Purple", size=18,face="bold"),axis.title.y = element_text(family = "mono",color = "Purple", size=18,face="bold"),
legend.justification = c(1,1),plot.title = element_text(family = "mono", 
color="Black", size = 20,hjust=0.4,face="bold"))


## Conclusions.

Edgar Munguia: Working with a lot of data may be complicated, because most of the times, you will have to work with specific data, i mean, you will need to filter the data in order to analyze and interpret the respective data,that was what we learned in this practice, to filter, create and show specific data in a graphical interpretation, in this case, we completely ignored some data to focus in other data that we needed to analyze. 

Saul Higuera: What we can do with data mining is impressive, in this unit we have to learn about more types of graphs, everything we have learned from rstudio seems very interesting to me, besides the way in which it can be graphed seems very useful to me with a tool as powerful as RStudio.  

## Evidence video link (Youtube):  
https://www.youtube.com/watch?v=WiNdIBujUA4





