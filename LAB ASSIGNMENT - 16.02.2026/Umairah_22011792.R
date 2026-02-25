#import
df <- read.csv("C:/Users/airah/Downloads/archive/Unclean Dataset.csv",
               stringsAsFactors = FALSE,
               fill = TRUE)

View(df)
str(df)
head(df)
summary(df)

#split the big Student_ID column using |
split_data <- strsplit(df$Student_ID, "\\|")

#find max number of columns
max_len <- max(sapply(split_data, length))

#make all rows SAME LENGTH!!
split_data <- lapply(split_data, function(x) {
  length(x) <- max_len
  return(x)
})

#convert to df
clean_data <- data.frame(do.call(rbind, split_data),
                         stringsAsFactors = FALSE)

#rename cols
colnames(clean_data) <- c("Student_ID", "First_Name", "Last_Name",
                          "Age", "Gender", "Course",
                          "Enrollment_Date", "Total_Payments")

#remove extra spaces
clean_data[] <- lapply(clean_data, trimws)

#format name
clean_data$First_Name <- tools::toTitleCase(tolower(clean_data$First_Name))
clean_data$Last_Name  <- tools::toTitleCase(tolower(clean_data$Last_Name))

#convert numeric columnsc
clean_data$Age <- as.numeric(clean_data$Age)

#format payment
clean_data$Total_Payments <- gsub("[^0-9.]", "", clean_data$Total_Payments)
clean_data$Total_Payments <- as.numeric(clean_data$Total_Payments)

#format date
clean_data$Enrollment_Date <- as.Date(clean_data$Enrollment_Date, format = "%Y-%m-%d")

#format gender
clean_data$Gender <- tolower(clean_data$Gender)
clean_data$Gender[clean_data$Gender == "m"] <- "M"
clean_data$Gender[clean_data$Gender == "male"] <- "M"
clean_data$Gender[clean_data$Gender == "f"] <- "F"
clean_data$Gender[clean_data$Gender == "female"] <- "F"

#remove dupes!!
clean_data <- clean_data[!duplicated(clean_data$Student_ID), ]

#remove rows that has null values
mean_age <- mean(clean_data$Age, na.rm = TRUE)
clean_data$Age[is.na(clean_data$Age)] <- mean_age

mean_payment <- mean(clean_data$Total_Payments, na.rm = TRUE)
clean_data$Total_Payments[is.na(clean_data$Total_Payments)] <- mean_payment

#remove rows that's missing important fields
clean_data <- clean_data[!is.na(clean_data$First_Name) & 
                           !is.na(clean_data$Last_Name), ]

clean_data <- clean_data[clean_data$Age >= 0 & clean_data$Age <= 120, ]

#check
head(clean_data)
str(clean_data)

#EXPORTR FINALLYYY
write.csv(clean_data,
          "C:/Users/airah/Downloads/Cleaned_Dataset.csv",
          row.names = FALSE)
