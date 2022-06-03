#instalar paquetes
install.packages("tidyverse")
library(tidyverse)

#abrir csv
base <- read_csv("base_ggplot.csv")
base
dim(base)


#grafica de dispersion de puntos
grafica_dispersion1 <-ggplot(data = base)+
  aes(x = sexo, y = edad, color=sexo)+
  geom_point()

grafica_dispersion1 

#Grafica de facetas



a <-ggplot(base,aes(x =edad))+ geom_bar(fill= "Red2")
a + theme_classic()


ggplot (base,aes(x =ansiedad_total ))+ geom_bar(aes(fill = edad), position= "dodge")

#grafica de distribucion 
ggplot(base, aes(x = ansiedad_total, y =motivacion_total ))+ geom_point()+ geom_point(aes (color = sexo))+
  theme_light()