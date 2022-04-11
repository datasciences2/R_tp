Pays<- c('Chine','Maroc',"France","Italie","Amerique","Espagne")
print(length(Pays))
#suppression d'un element du vecteur
print(Pays[-which(Pays=="Amerique")])

PaysEuro<- pays[c(3,4,6)]
#tri dans l'ordre
print(sort(PaysEuro))
#2
v1<-sample(1:100,6)#vecteur aleatoir
print(v1)

v1[between(v1,20,80)]#valeur entre 20 80 or v1[v1 >20 & v1<80]
sum(v1)#somme
mean(v1)#moyen
min(v1)#min
max(v1)#max
#3
v2=1:50
v2<- v2[(v2%% 5)==0] # or v2= seq (5,50,by=5)
print(v2)
#4
v3= rep(v2,each=3) #replique de valeurs 
print(v3)

#5
v4=LETTERS
for (i in 1:26) {
  v4=append(v4,rep(v4[i],each=i))
  
}
# other methode v4=rep(LETTRE,c(1:26))
print(v4)
print(length(v4))

#6
v5 =
v6=c("Minime","Cadet","Minime","Cadet","Poussin","Minime","Minime")
#convertion en facteur
F=factor(v6)
levels(F)<-F
print(F)
#nombre de minim
Nm=Sum(Summary(F[F=="Minime"]))
#Nm<-enght(whitch(F=='Minim'))
print(Nm)
#nombre de cadet
Nd=Sum(Summary(F[F=="Cadet"])) #Nd<-enght(whitch(F=='Cadet'))
print(Nd)
 #Question d
table(F)






