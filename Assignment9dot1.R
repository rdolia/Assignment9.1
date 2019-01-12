

#1. If Z is norm (mean = 0, sd = 1)
#find P(Z > 2.64)
pnorm(2.64)
#P(Z > 2.64) = 0.9958547
#find P(|Z| > 1.39
2 *pnorm(-abs(2.64))

#Suppose p = the proportion of students who are admitted to the graduate school
#of the University of California at Berkeley, and suppose that a public relation
#officer boasts that UCB has historically had a 40% acceptance rate for its graduate
#school. Consider the data stored in the table UCBAdmissions from 1973. Assuming
#these observations constituted a simple random sample, are they consistent with the
#officerâ..s claim, or do they provide evidence that the acceptance
#rate was significantly less than 40%?
 # Use an Î± = 0.01 significance level.
UCBAdmissions
rejected = 313+ 19 +207+8+205+391+279+244+138+299+351+317
rejected
total =  512+89+313+19+353+17+207+8+120+202+205+391+138+131+279+244+53+94+138+299+22+24+351+317
total
pbar = 1 - rejected/total  
pbar
numerator = (pbar-0.4)
denominator = sqrt((0.4*0.6)/4526)
#As significance level is alpha = 0.01 critical value of z is -2.326
#Calculated value of z  in proportions is z= (pbar-p)/sqrt((p(1-p))/n)
zcalc = numerator/denominator
zcalc
#Hence as zcalc is -1.680919. Hence as value does not lie in the rejection region
#we accept the null hypothesis and conclude that the officer's claim of 40% acceptance is consistent.
