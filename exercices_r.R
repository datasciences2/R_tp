# Exercice 1
# Question 1
corpulence = function (taille, poids) {
   imc = poids / (taille)^2
  if (imc < 17) {
    c = "Maigre"
  } else if (17 <= imc && imc < 27) {
    c = "Normal"
  } else {
    c = "Obèse"
  }
   return(c)
}

corpulence(1.98, 89)

# Question 2
vecn <- c('Chini', 'Marco', 'Franco')
vect <- c(1.5, 1.2, 2)
vecp <- c(50, 150, 100)

CorpulenceGroupe <- function(noms, tailles, poids){
  str = ''
  for (i in 1:length(noms)){
    str[i] <- paste(toString(noms[i]), toString(corpulence(taille = tailles[i], poids = poids[i])))
  }
  return(str)
}
b <- CorpulenceGroupe(vecn, vect, vecp)
b

# Exercice 2
# Question 1
pays = c("Chine", "Maroc", "France", "Italie", "Amérique", "Espagne")
length(pays)

pays = pays[pays != "Amérique"]
paysEuro = c("France", "Italie", "Espagne")
sort(pays)

# Question 2
v1 <- c(sample(1:100, 6))
v1[v1 >= 20 & v1 <= 80]
sum(v1)
mean(v1)
min(v1)
max(v1)

# Question 3
seq <- c(seq(1:50))
v2 <- c()
for (multiple in 1:length(seq)) {
  if (multiple %% 5 == 0) {
    v2 <- c(v2, multiple)
  }
}
v2

# Question 4
v3 <- c()
for (i in 1:length(v2)) {
  v3 <- c(v3, rep(v2[i], 3))
}
v3

# Question 5
alpha <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z")
v4 <- c()
for (j in 1:length(alpha)) {
  v4 <- c(v4, rep(alpha[j], j))
}
v4

# Question 6
v6 <- c("Minime", "Cadet", "Minime", "Cadet", "Poussin", "Minime", "Minime")
f <- factor(v6)
levels(f)
Nm <- sum(summary(f[f == "Minime"]))
Nm
Nd <- sum(summary(f[f == "Cadet"]))
Nd

# Exercice 3
# Question 1
v <-  c(sample(0:255, 20))
v

# Question 2
mat <- matrix(v, nrow = 5, ncol = 4)
mat

# Question 3
mat[5, 4]

# Question 4
mat[3,]

# Question 5
mat[3:5, c(1, 4)]

# Question 6
dim(mat)
sum(mat[,1])

# Question 7
vsc <- c()
for (l in 1:4) {
  vsc <- c(vsc, sum(mat[,l]))
}
vsc

# Question 8
mat <- rbind(mat, vsc)

# Question 9
vml <- c()
for (k in 1:5) {
  vml <- c(vml, round(mean(mat[k,])))
}
vml

# Question 10
mat <- cbind(mat, vml) 

# Question 11
rownames(mat) = c("L1", "L2", "L3", "L4", "L5", "Somme") 

# Question 12
colnames(mat) = c("C1", "C2", "C3", "C4", "Moyenne")

# Question 13
B <- mat[1:5, 1:4, drop = FALSE]
B

# Question 14
C <- t(B)
C 

# Question 15
P <- B %*% C
P

# Exercice 4
# Question 1
city <- c("Agadir", "Rabat", "Casablanca", "Marrakech", "Tanger", "Fes")
confirmed <- c(71, 150, 1050, 640, 522, 210)
healed <- c(60, 112, 949, 495, 455, 191)
death <- c(11, 38, 101, 145, 77, 19)

# Question 2
covid <- data.frame(city, confirmed, healed, death)
covid

# Questions 3 et 4
dim(covid)
summary(covid)

# Question 5
testNumber <- c(1450, 2510, 5748, 4850, 3251, 1906)
epicenter <- c("F", "F", "T", "T", "T", "F")
covid <- cbind(covid, testNumber)
covid <- cbind(covid, epicenter)
covid

# Question 6
covid <- rbind(covid, c("Tiznit", 0, 0, 0, 250, "FALSE"))
covid

# Question 7
install.packages("dplyr")
library("dplyr")
covid %>%
  filter(city == "Casablanca")

# Question 8
covid %>%
  filter(confirmed > 500)

# Question 9
covid %>%
  filter(confirmed > 500 & death > 100)

# Question 10
covid %>%
  select(city, testNumber, death)

# Question 11 ?
newCol <- covid %>%
  summarize(taux_confirmed = confirmed / sum(confirmed, death, healed), taux_healed = healed / sum(confirmed, death, healed))
covid <- cbind(covid, newCol)

# Question 12
install.packages("ggplot2")
library("ggplot2")
ggplot(covid, aes(x = taux_confirmed, y = taux_healed, group = 6, color = city)) + geom_line() + expand_limits(y = 0) + scale_x_log10()

