##       KAINGO NGBALENZELA N�h�mie et Li�na ISHEMEZWE ont fait ce travail
#pour que ce code fonctionne correctement il suffit de changerle path l'argument de setwd() avec votre path puis 
#charg� le fichier auto.txt qui se trouve dans le path charg-


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
 #calcul l'�cart-type
 sd(m.prim$city_mpg)
 #les 1er et 3�me quartiles
 quantile(m.prim$price)
#Calculez la fr�quence des v�hicules
 table(m.prim$fuel_type)
#Calculez la fr�quence des v�hicules
 table(m.prim$aspiration)
#Combien y a-t-il de v�hicules � fuel_type = gas � et � aspiration = std �
####nrow(m.prim[table(m.prim$fuel_type=="gas"&& m.prim$aspiration=="std")])
 table(m.prim$fuel_type=="gas", m.prim$aspiration=="std")
#les v�hicules correspondant aux caract�ristiques (� fuel_type = gas � et � aspiration = std � et � price < 30000 �). 
m=table(m.prim$fuel_type=="gas", m.prim$aspiration=="std" , m.prim$price<30000)
m
nrow(m)
#Cr�ez le graphique � nuage de points � avec en abscisse � engine_size � et en ordonn�e� price �
# library
#library(ggplot2)
#library(dplyr)
#ggplot2(m,aes(x=m$engine_size,y=m$price))
plot(m.prim$engine_size,m.prim$price)
#Calculez le coefficient de corr�lation entre ces deux variables
cor(m.prim$price,m.prim$engine_size)








