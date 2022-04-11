# library
library(ggplot2)
library(dplyr)
#ces librairies sont deja installé sur la machine avec install.packages(le nom du package)
# importer les données
setwd("C:/Users/NEM'S/Documents/IAschool/TP_IA/R_TP")
getwd()
data <- read.csv("KaggleCompetitionsRanking.csv",sep = ";")
data
datcoin <- data.frame(data)
dat <- datcoin[-1]
View(dat)
# faire la somme par année
table <-by(dat[,4], dat[,3], sum)
silver <-by(dat[,5], dat[,3], sum)
bronze <-by(dat[,6], dat[,3], sum)
View(table)
table[1:12]
# create dataframe
new <- data.frame(table[1:12])
colnames(new) <- c("Gold.Medals")
new["Silver.Medals"] <- silver
new["Bronze.Medals"] <- bronze
new
data.frame(new)
new
# diagramme secteur
new["Join.Date"] <- c("2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021")
new

# bar
ggplot(data=new, aes(x=Join.Date, y=Bronze.Medals)) +
  geom_bar(stat="identity", fill="steelblue")+
  geom_text(aes(label=Bronze.Medals), vjust=1.0, color="white", size=2.5)
# histogramme
ggplot(new, aes(x = Bronze.Medals)) +
  geom_histogram(fill = "pink", colour = "brown")
#nuage de point
ggplot(
  data=new,
  aes(
    x=Join.Date,#Bronze.Medals,
    y=Gold.Medals)
)+
  geom_point()+
  ggtitle("Proportion de l'or en methal par année")+
  xlab("OR en methal")+
  ylab("nombre d'année")
#boite à moustache
ggplot(new, aes(x = Join.Date, y = Bronze.Medals, fill = new$Join.Date)) +
  geom_boxplot() +
  scale_y_continuous(name = "Averager de bronze recoleté") +
  scale_x_discrete(labels = abbreviate, name = "année de collete")
# secteur
ggplot(new, aes(x="", y=Bronze.Medals, fill=Join.Date)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)+
  theme_void()
#


#####