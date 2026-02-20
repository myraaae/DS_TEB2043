#to create table
names =c("Carrol","Mike","John")
gender = c("Female", "Male", "Male")
height = c(160, 175, 173)
weight = c(49, 89, 77)
age = c(35, 36, 41)
df = data.frame(names,gender,height,weight,age)
View(df)

#viewing data (row, column)
df[1,3]
df[1:2,1:3]
df['height']
df["gender"]
df$gender
df[1:2]
df[c(1,2)]
df[df$names == "Mike",]
df[df$names == "Fufu",] #will not display anything because doesn't exist

#add row
newdf= rbind(df,data.frame(names = "Suuria",gender = "Female",height = 156,weight = 56,age = 23 ))
print("After Added rows:\n")
print(newdf)

#merge rows
gender = c("Female", "Male", "Male","Female","Male")
height = c(160, 175, 173,156,169)
weight = c(49, 89, 77,56,81)
age = c(35, 36, 41,23, 28)
names =c("Carrol","Mike","John","Suuria","Malik")
df1 = data.frame(names,gender,height,weight,age)

states = c("Selangor","Perak","Melaka")
names = c("Carrol","John","Malik")
df2 = data.frame(names, states)

dfMerge= merge(df1, df2, by = "names", all= TRUE)

#to remove data (row,column)
newDf2 = newDf[-2]
newDf4 = newDf
newDf4[,-4]

#import data
getwd()
data_cv<- read.csv("C:/Users/airah/Downloads/my_covid.csv")
summary(data_cv)

#remove data from file and save
newdf <- data_cv[-seq(10,13), ]
View(newdf)
write.csv(newdf, "C:/Users/airah/Downloads/my_covid.csv")
a <- c
a <- c(1:5, rep(NA,3),6:10)
sum(a)

#creating a vector of integers having NAs.
a<-c(seq(1,10,3), rep(NA,4), seq(10,2,-2))
a

#Import csv
getwd()
data_cv <- read.csv("C:/Users/ACER/Desktop/my_covid(in).csv")
print(head(data_cv,5))
summary(data_cv)


df<- read.csv("C:/Users/airah/Downloads/NAexample.csv")
View(df)
df$VarA[is.na(df$VarA)]<-sd(na.omit(df$VarA))
df$VarB[is.na(df$VarB)]<-mean(df$VarB,na.rm=TRUE)
df$VarC[is.na(df$VarC)]<-median(df$VarC,na.rm=TRUE)
View(df)

df_raw <- read.csv("C:/Users/airah/Downloads/file1.csv")
df_cleaned <- df_raw
df_logrm <- data.frame(TagsValue=character(), Definition=character(), Value=character())
rows_to_remove <- c()

for (i in 1:nrow(df_raw))
{
  if (df_raw[i, 2] == "Bad value" && df_raw[i, 3] == "Garbage")
  {
    rows_to_remove <- c(rows_to_remove, i)
    # Log the removed bad values
    df_logrm <- rbind(df_logrm, c(df_raw[i, 1], df_raw[i, 2],df_raw[i, 3]))
    # Save the index for the rows to be removed
  }
}
df_cleaned <- df_cleaned[-rows_to_remove, ]
View(df_cleaned)
View (df_logrm)

#transforming data
data(iris)
head(iris)

#check its type
class(iris$Species)

#View values of catagories/level
levels(iris$Species)

#Convert Categorical to numeric
iris$Species_numeric <- as.numeric(iris$Species)
head(iris)
