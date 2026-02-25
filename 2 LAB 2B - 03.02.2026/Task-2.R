word1 <- readline("Enter first string: ")
word2 <- readline("Enter second string: ")

#convert to lowercase so its case insensitive
word1_lower <- tolower(word1)
word2_lower <- tolower(word2)

#compare & display
same <- word1_lower == word2_lower

cat("This program compare 2 strings. Both inputs are similar: ", same, "\n")