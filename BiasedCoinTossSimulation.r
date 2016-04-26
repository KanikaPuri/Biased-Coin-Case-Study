#install.packages("pwr")
#library(pwr)

x <- sample(c("1","0"), size=5000, replace=TRUE,prob=c(.02, .98))
table(x)

y <- sample(c("1","0"), size=5000, replace=TRUE,prob=c(.05, .95))
table(y)

prop.test(c(table(x)[[2]],table(y)[[2]]), c(5000,5000), alternative="two.sided", conf.level=.95)       # test statistic


#pwr.2p.test(h = 0.8, n=5000, sig.level = .95) #Calculation also shown in report