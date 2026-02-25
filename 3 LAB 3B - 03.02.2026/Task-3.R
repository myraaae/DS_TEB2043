#create list
students <- list(
  name = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt",
           "Larson", "Holland", "Paul", "Simu", "Renner"),
  
  chemistry = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59)
)

#append new subject
students$physics <- c(89, 86, 65, 52, 60, 67, 40, 77, 90, 61)

#how many students failed
fail_chem <- sum(students$chemistry <= 49)
fail_phy  <- sum(students$physics <= 49)

#highest score for each subject
highest_chem <- max(students$chemistry)
highest_phy  <- max(students$physics)

#who has the highest scores
top_chem_student <- students$name[students$chemistry == highest_chem]
top_phy_student  <- students$name[students$physics == highest_phy]

#printtttt
cat("Number of students fail Chemistry:", fail_chem, "\n")
cat("Number of students fail Physics:", fail_phy, "\n\n")

cat("Highest Chemistry score:", highest_chem, "\n")
cat("Student highest Chemistry:", top_chem_student, "\n\n")

cat("Highest Physics score:", highest_phy, "\n")
cat("Student highest Physics:", top_phy_student, "\n")