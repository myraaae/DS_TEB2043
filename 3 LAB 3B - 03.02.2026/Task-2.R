#create list
students <- list(
  name = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt",
           "Larson", "Holland", "Paul", "Simu", "Renner"),
  
  score = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59)
)

#scores
highest_score <- max(students$score)
lowest_score <- min(students$score)
average_score <- mean(students$score)

#student names with highest & lowest scores
student_highest <- students$name[students$score == highest_score]
student_lowest <- students$name[students$score == lowest_score]

cat("Highest score:", highest_score, "\n")
cat("Lowest score:", lowest_score, "\n")
cat("Average score:", average_score, "\n")
cat("Student highest:", student_highest, "\n")
cat("Student lowest:", student_lowest, "\n")