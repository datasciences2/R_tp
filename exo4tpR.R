# Question 1
city <- c("Agadir", "Rabat", "Casablanca", "Marrakech", "Tanger", "Fes")
confirmed <- c(71, 150, 1050, 640, 522, 210)
healed <- c(60, 112, 949, 495, 455, 191)
death <- c(11, 38, 101, 145, 77, 19)

# Question 2
covid <- data.frame(city, confirmed, healed, death)
print(covid)

# Questions 3 et 
dim(covid);nrow(covid);ncol(covid)
str(covid)
summary(covid)

# Question 4 et 5
testNumber <- c(1450, 2510, 5748, 4850, 3251, 1906)
epicenter <- c(FALSE, FALSE, TRUE, TRUE, TRUE, FALSE)
covid <- cbind(covid, testNumber)
covid <- cbind(covid, epicenter)
covid
#######
# Question 6
covid <- rbind(covid, c("Tiznit", 0, 0, 0, 250, "FALSE"))
covid

# Question 7

covid[covid$city=="Casablanca"]

covid[city=="Casablanca"]
# Question 8
covid[covid$confirmed > 500]

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

