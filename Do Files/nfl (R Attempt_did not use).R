
library(dplyr)
#you'll have to wait to find out the purpose of this mysterious package
library(skellam)
library(ggplot2)
library(purrr)
library(tidyr)
# abettor is an R wrapper for the Betfair API, 
# which we'll use to obtain betting odds
#devtools::install_github("phillc73/abettor")

library(abettor)
library(RCurl)


games<-read.csv("C:/Users/WilliamDuncan/Desktop/Econ PhD/Introduction to Data Science/(4) Fourth Project/nfl_games.csv",header = T,sep = ",")

hist(games$score1)
hist(games$score2)

ln_score1 <- log(games$score1+1)
ln_score2 <- log(games$score2+1)
delta_score <- games$score1-games$score2
ln_delta_score <- ln_score1-ln_score2

games1 <- cbind(games, ln_score1, ln_score2, delta_score, ln_delta_score)

hist(games1$delta_score)

hist(ln_score1)
hist(ln_score2)
hist(ln_delta_score)


model1 <- lm(games$result1~games$elo_prob1)
summary(model1)

model2 <- lm(games$result1~games$elo1 + games$elo2 +games$elo_prob1)
summary(model2)

model3 <- lm(games1$score1 ~ games1$score2 + games1$delta_score + games1$ln_delta_score + games1$result1)
summary(model3)