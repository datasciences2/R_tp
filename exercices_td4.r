setwd("C:/Users/NEM'S/Documents/IAschool/TP_IA/R_TP")

getwd()

cigar1= read.table("cigarette_pour_regression.txt",header = T,sep = "\t",dec = ".",row.names = 1) 
cigar1                                                               
cigar2= read.table("autre_cigarette.txt",sep = "\t",dec = ".")
cigar2
cigarette= bind_rows(cigar1,cigar2)
cigarette
#Affichez les observations, puis affichez le nombre de lignes et de colonnes du data frame
dim(cigar1)
#Affichez les noms des observations et des variables
rownames(cigar1)
colnames(cigar1)
#Calculez les statistiques descriptives pour chaque variable
summary(cigar1)
#Réalisez les graphiques nuages de points en croisant deux à deux les variables
pairs(cigar1)
#Réalisez une régression linéaire multiple expliquant la variable CO à partir de toutes les autres
attach(cigar1)
reg=lm(CO~TAR+NICOTINE+WEIGHT)

reg1=summary(reg)
reg1
#Affichez le champ $coefficients de l'objet issu de summary()
summary(reg1$coefficients)
#Quel est le type de cet objet ? (class)
class(reg1$coefficients)
#Quelles sont ses dimensions ? (dim) 
dim(reg1$coefficients)
#Affichez les écarts-type des coefficients estimés
ecart_type=reg1$coefficients[,2]
ecart_type
# Pour chaque coefficient, calculez sont intervalle de confiance au niveau 95% (  pour le calcul des quantiles de la loi de Student)
quantil=qt(0.95,df=20,lower.tail=TRUE)#

0.7334+qt(0.095,df=ecart_type-1,lower.tail=TRUE)*sqrt()
qt(0,05,df=reg1,lower.tail=FALSE)
quantil


