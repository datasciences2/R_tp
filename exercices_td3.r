##       KAINGO NGBALENZELA Néhémie et Liéna ISHEMEZWE ont fait ce travail
#pour que ce code fonctionne correctement il suffit de changerle path l'argument de setwd() avec votre path puis 
#chargé le fichier auto.txt qui se trouve dans le path charg-


setwd("C:/Users/NEM'S/Documents/IAschool/TP_IA/R_TP")
getwd()

m.prim=read.table("autos.txt",header = T,sep = "\t",dec = ".")  #,sep = "\t"
m.prim
#Combien y a-t-il d'observations ?
nrow(m.prim)
#Combien y a-t-il de variables dans le fichier ?
ncol(m.prim)
#Affichez la liste des variables et leurs types
 str(m.prim)
#Calculez les statistiques descriptives
 summary(m.prim)
#Calculez la moyenne
 mean(m.prim$price)
 #calcul l'écart-type
 sd(m.prim$city_mpg)
 #les 1er et 3ème quartiles
 quantile(m.prim$price)
#Calculez la fréquence des véhicules
 table(m.prim$fuel_type)
#Calculez la fréquence des véhicules
 table(m.prim$aspiration)
#Combien y a-t-il de véhicules « fuel_type = gas » et « aspiration = std »
####nrow(m.prim[table(m.prim$fuel_type=="gas"&& m.prim$aspiration=="std")])
 table(m.prim$fuel_type=="gas", m.prim$aspiration=="std")
#les véhicules correspondant aux caractéristiques (« fuel_type = gas » et « aspiration = std » et « price < 30000 »). 
m=table(m.prim$fuel_type=="gas", m.prim$aspiration=="std" , m.prim$price<30000)
m
nrow(m)
#Créez le graphique « nuage de points » avec en abscisse « engine_size » et en ordonnée« price »
# library
#library(ggplot2)
#library(dplyr)
#ggplot2(m,aes(x=m$engine_size,y=m$price))
plot(m.prim$engine_size,m.prim$price)
#Calculez le coefficient de corrélation entre ces deux variables
cor(m.prim$price,m.prim$engine_size)








