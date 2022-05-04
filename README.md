# **Unit # 2 branch. Data Mining course.**  

## Practice#1.  
[PDF link](https://github.com/Saul12344/mineria-de-datos/blob/unit_2/practices/U2P1dm.pdf)  
[.R File]()  

## Steps.  

## 1-. Search for a data CSV source (up to you).  

## 2.- Read the data and analyse it using R.  

## 3.- Generate three plots with R that tell the story of the data, the first one be a scatter plot of points,the second that is a graph in facets and the third a graph that tells us something statistical like the distribution that the data has and that contains the layer themes.

## 3.1.- Dot scatter plot.  

## 3.2.- Facet graph.  

## 3.3.- Distribution graph.  




  

## Evaluation practice.
[PDF link](https://github.com/Saul12344/mineria-de-datos/blob/unit_2/evaluation%20practice/evaluation%20practice%20unit2.pdf)  
[.R File](https://github.com/Saul12344/mineria-de-datos/blob/unit_2/evaluation%20practice/evaluation%20practice%20u2.R)  

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




