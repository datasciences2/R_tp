setwd("C:/Users/NEM'S/Documents/IAschool/TP_IA/R_TP")
getwd()
#lecture de fichier
cars= read.csv("cars.csv")
#afficher
cars

#chargement de l
library('dplyr')
#selection
temp= select(
  .data= cars,
  Car,
  mpg,
  carb,
  cyl
)
head(temp)
print(temp)

#sous ensemble
tem= filter(
  .data=temp,
  cyl==6
)
head(tem)

#ajout colonne
temp<-mutate(
  .data= temp,
  consumption=0,425
)
head(temp)
#grouby  on column
temp= group_by(
  .daa=temp,
  carh
)
install.packages("ggplot2")
library(ggplot2)
# creation de diagramme de barre
ggplot(
  data=cars,
  aes(x=cyl))+
  geom_bar()+
  ggtitle("Nombre de voitures par type de cylindre")+
  xlab("type de cylindre")+
ylab("Nnombre de voitures")

#creation histogramme

ggplot(
  data=cars,
  aes(x=mpg))+
  geom_histogram(bins=10)+
  ggtitle("Repartition de la consomation du carburant")+
  xlab("consomation de mpg")+
  ylab("Nnombre de voitures")

#creation de graphique de densite
ggplot(
  data=cars,
  aes(x=mpg))+
  geom_density()+
  ggtitle("Repartition de la consomation du carburant")+
  xlab("consomation de mpg")+
  ylab("Nnombre de voitures")
#creation de nuage de point
ggplot(
  data=cars,
  aes(
    x=cyl,
    y=mpg)
  )+
  geom_point()+
  ggtitle("Nombre de voitures par type de cylindre")+
  xlab("type de cylindre")+
  ylab("Nnombre de voitures")
