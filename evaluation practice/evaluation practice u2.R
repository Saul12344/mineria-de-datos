#Cargar archivo a trabajar
csv<-read.csv(file.choose())

#Filtrar los datos (Género y nombre del estudio)
filtrogenero<-(csv$Genre=="action")|(csv$Genre=="adventure")|(csv$Genre=="animation")|(csv$Genre=="comedy")|(csv$Genre=="drama")

filtroestudios<-csv$Studio %in% c("Buena Vista Studios","Fox","Paramount Pictures","Sony","Universal","WB")

filtrogenero

filtroestudios

#Crear segundo dataframe en base a los datos filtrados
csv2<-csv[filtrogenero & filtroestudios,]
csv2

#Creación de gráfica
graf<-ggplot(data=csv2,aes(x=Genre,y=Gross...US))+geom_jitter(aes(size=Budget...mill.,colour=Studio))+geom_boxplot(alpha=0.8,outlier.color=NA)+scale_size_continuous(range=c(1, 3))+xlab("Genre")+ylab("Gross % US")+ggtitle("Domestic Gross % by Genre")+theme(axis.title.x=element_text(colour="Blue",size=17),axis.title.y=element_text(colour="Blue",size=17),axis.text.x=element_text(size=12),axis.text.y=element_text(size=12),plot.title=element_text(size=22),legend.title=element_text(size=12),text=element_text(family="mono"))   

#Mostrar datos de la gráfica
graf+ xlab("Genre") + ylab("Gross % US") + ggtitle("Domestic Gross % by Genre")+theme(axis.title.x=element_text(family="mono",
color="Purple", size=18,face="bold"),axis.title.y = element_text(family = "mono",color = "Purple", size=18,face="bold"),
legend.justification = c(1,1),plot.title = element_text(family = "mono", 
color="Black", size = 20,hjust=0.4,face="bold"))