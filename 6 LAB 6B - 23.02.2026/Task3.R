names =c("Anastasia","Dima","Michael","Matthew","Laura","Kevin", "Jonas")
score = c(12.5,9.0,16.5,12.0,9.0,8.0, 19.0)
attempts = c(1, 3, 2, 3, 2, 1, 2)
df = data.frame(names,score, attempts)

#added new column
newdf= cbind(data.frame(names,score, attempts,
                        qualify = c("yes", "no", "yes", "no", "no", "no", "yes")))

#add new row now
newdf2 = rbind(newdf, data.frame(names = "Emily",score = 14.5,attempts = 1, qualify = "yes"))
print("Rows added successfully")
View(newdf2)