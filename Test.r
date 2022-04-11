a<- array(
  data = 1:8,
  dim = c(2,2,2)
)

f<- function(b){
  b%%2 ==0
}
f(5)
#facttor
cate<-c("femme","homme","femme","homme","femme","homme")
fact<-factor(cate)
fact
levels(fact)
unclass(fact)
#dataframe
df<-data.frame(
  NAME= c("chat","chient","vache","tigre"),
  Howmany=c(5,10,15,20),
  IsPet= c(TRUE,TRUE,FALSE,FALSE)
  
)
df[1:2]
df$Howmany
df[,2]
df[c(2,4),]
df[2:4,]
df[df$Howmany>10,]
df[df$NAME%in%c("chat","vache"),]
df[!df$NAME%in%c("chat","vache"),]

#matrix
m<- matrix(data=1:6, nrows=2,ncol=3)
n=matrix(1:6,2,3)
m==n #or identical(m,n)


#initialisation des packages
install.packages("dplyr")
install.packages("ggplot2")

#chargement des packages
library("dplyr")
library("ggplot2")
# aide
?data.frame


