# majorleagues
Analysis of NFL
This project looks at data provided on the National Football League.
______________________________________________________________________________________

# Data Description
This dataset initially has 12 features and 16,007 rows of data. The first 12 features include things like date, season, team name, score of each team playing, the outcome (1 if team1 wins, 0 if team2 wins, and 0.5 if it is a tie). There are also features on the 538 model called ELO. These are a prediction with a probability that team1 will win. 

I created some additional features like the logarithm of the scores (taking ln_score1 = ln(score1+1) and so on). Additionally, I created numeric time variable from the date in order to use time series analysis. I created a delta_score variable and a difference of the logarithms of score1 and score2. 

The histograms, which can be seen in the plots folder, show that the distribution for score1 and score 2 are scored, close to a Poisson distribution. However, differencing the two scores, and plotting a histogram of the differenced variables, reveals a symmetric normal distibution centered around zero. 

The auto-correlation function plots (ACF), and the partial auto-correlation function plots (PACF) can also be found in the plots folder on Github. These help to determine the optimal number of lags should an ARIMA model make sense for the data. 
______________________________________________________________________________________

# Models

Here, I make use of an ARIMA model for the score variables and the outcome variable. Results are reported in the Results page. 

Due to the distribution of the score1 and score2 variables, I also use a Poisson regression to test them against the result1 variable. The results are also reported in the Results page. 
