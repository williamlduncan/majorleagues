# majorleagues
Analysis of NFL
This project looks at data provided on the National Football League.
______________________________________________________________________________________

# Data Description
This dataset initially has 12 features and 16,007 rows of data. The first 12 features include things like date, season, team name, score of each team playing, the outcome (1 if team1 wins, 0 if team2 wins, and 0.5 if it is a tie). There are also features on the 538 model called ELO. These are a prediction with a probability that team1 will win. 

I created some additional features like the logarithm of the scores (taking ln_score1 = ln(score1+1) and so on). Additionally, I created numeric time variable from the date in order to use time series analysis. I created a delta_score variable and a difference of the logarithms of score1 and score2. 

______________________________________________________________________________________


