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

Here, I make use of an ARIMA model for the score variables and the outcome variable. Results are reported in the Results page. We can see in these models  that certain lags are statistically significant while others are not. For the two score variables, the ACF and PACF lend evidence for 3 lagged periods, so I chose to do an arima(3,1,3). For the result1 variable, I did an arima(1,1,1). 

Due to the distribution of the score1 and score2 variables, I also use a Poisson regression to test them against the result1 variable. The results are also reported in the Results page. Here, these results are highly significant. We can see that team 1 would win more requently, something apparent in the histogram of result1. Team 2 wins less frequently, and so the coefficient for the Poisson regression of score2 on result1 comes back negative. 


*Note: I had someone help me understand how to use Jupyter so this project is the first one where I tried to code everything in Python using the notebook. I had tried many times to use Python/R on each of the previous assignments, but just couldn't commit the time to work everything out precisely with those sort of 'learning pains'. Unfortunately, for this assignment, I got lost in the code, but I feel that I learned a significant amount about how to use Python, and certainly how to use the notebook. That being said, I did not feel able to do the basic data engineering and analysis there, so I have once again opted for STATA. Hopefully, soon, I will know enough Python to be able to submit to you a project all in the notebook!!
