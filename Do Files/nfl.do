


import delimited "C:\Users\WilliamDuncan\Desktop\Econ PhD\Introduction to Data Science\(4) Fourth Project\nfl_games.csv"
sort team1 season

****************PLOTS******************

ac score1
graph save Graph "C:\Users\WilliamDuncan\Desktop\Econ PhD\Introduction to Data Science\(4) Fourth Project\Plots\(1) ACF for score1", replace
pac score1
graph save Graph "C:\Users\WilliamDuncan\Desktop\Econ PhD\Introduction to Data Science\(4) Fourth Project\Plots\(2) PACF for score1", replace

ac score2
graph save Graph "C:\Users\WilliamDuncan\Desktop\Econ PhD\Introduction to Data Science\(4) Fourth Project\Plots\(3) ACF for score2", replace
pac score2
graph save Graph "C:\Users\WilliamDuncan\Desktop\Econ PhD\Introduction to Data Science\(4) Fourth Project\Plots\(4) PACF for score2", replace


ac result1
graph save Graph "C:\Users\WilliamDuncan\Desktop\Econ PhD\Introduction to Data Science\(4) Fourth Project\Plots\(5) ACF for result1", replace
pac result1
graph save Graph "C:\Users\WilliamDuncan\Desktop\Econ PhD\Introduction to Data Science\(4) Fourth Project\Plots\(6) PACF for result1", replace

gen ln_score1 = ln(score1+1)
gen ln_score2 = ln(score2+1)
gen delta_score = score1-score2
gen ln_delta_score = ln_score1-ln_score2

hist(score1)
graph save Graph "C:\Users\WilliamDuncan\Desktop\Econ PhD\Introduction to Data Science\(4) Fourth Project\Plots\(7) Histogram for score1", replace

hist(score2)
graph save Graph "C:\Users\WilliamDuncan\Desktop\Econ PhD\Introduction to Data Science\(4) Fourth Project\Plots\(8) Histogram for score2", replace

hist(result1)
graph save Graph "C:\Users\WilliamDuncan\Desktop\Econ PhD\Introduction to Data Science\(4) Fourth Project\Plots\(9) Histogram for result1", replace

hist(delta_score)
graph save Graph "C:\Users\WilliamDuncan\Desktop\Econ PhD\Introduction to Data Science\(4) Fourth Project\Plots\(10) Histogram for delta_score", replace


***************MODELS**********************


arima score1, arima(3,1,3)
arima score2, arima(3,1,3)
arima result1, arima(1,1,1)

poisson score1 result
poisson score2 result

