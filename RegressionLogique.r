setwd("C:/Users/NEM'S/Documents/IAschool/TP_IA/R_TP")
getwd()

# installation packages

install.packeges("dplyr")
install.packeges("reader")
install.packeges("tidyselect")
install.packeges("caret")

#chargement des packages

library(reader)# importation data
library(dplyr)#manipulation data
library(tidyselect)#manipulation de data
library(caret) # machine learning
library(lattice)
library(ggplot2)

train<- read.csv("train.csv")
test<- read.csv("test.csv")
train
test
#manipulation de data
full<-bind_rows(train,test) # regrouper dans un seul data
head(full)

#nbre de valeurs manquantes
sum(is.na(full))
#%de valeurs manquante de chaque colonne
colMeans(is.na(full))
#supprimer les valeurs manquantes de la vaariable embarked
full<-full[!is.na(full$Embarked),]
#supprimer les valeurs manquantes de la vaariable survived
full<-full[!is.na(full$Survived),]
full
#remplacage les valeurs manquantes de vage
full[is.na(full$Age),]$age<- median(full$Age,na.rm=T)
#selectionner les data qu'on garder pour la suite de l'analyse
full<-full%>%select(c("Survived","Pclass","Sex","Age","SibSp","Parch","Fare","Embarked"))
full

#modelisation

set.seed(222) # parametre un seed alleatoire
#rediviser les donnees en train (75%) et test
sm_size<-floor(0.75*nrow(full))
sm_size
train_ind<- sample(seq_len(nrow(full)),size = sm_size)

train<- full[train_ind]
test<- full[-train_ind]
#logistique de regression
#paratre du model

fitControl<-trainControl(method="cv", number= 10, savePredictions= TRUE)
lr_model<- train(factor(Survived)~.,
                 data= train,
                 method= "glm",
                 family=binomial(),
                 trControl=fitControl
)

#affichage du model

summary(lr_model)

#prevision sur la table test
prediction_lr<-predict(lr_model,test)
testPrediction<- prediction_lr

#matrice de confusion
xtab<- table(testPrediction,test$Survived)
confusionMatrix(xtab)

