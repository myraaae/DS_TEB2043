names =c("Anastasia","Dima","Michael","Matthew","Laura","Kevin", "Jonas")
score = c(12.5,9.0,16.5,12.0,9.0,8.0, 19.0)
attempts = c(1, 3, 2, 3, 2, 1, 2)
df = data.frame(names,score, attempts)

#added new column & row
newdf= cbind(data.frame(names,score, attempts,
                        qualify = c("yes", "no", "yes", "no", "no", "no", "yes")))
newdf2 = rbind(newdf, data.frame(names = "Emily",score = 14.5,attempts = 1, qualify = "yes"))

#change column data types to get summary

newdf2$score = as.numeric(newdf2$score)
newdf2$attempts = as.numeric(newdf2$attempts)
newdf2$qualify = as.factor(newdf2$qualify)

View(newdf2)
summary(newdf2)