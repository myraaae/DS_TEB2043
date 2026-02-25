#input
name <- readline("Enter your name: ")
phone <- readline("Enter your phone number: ")

#uppercase name
name_upper <- toupper(name)

# get first 3 digits and last 4 digits
first3 <- substr(phone, 1, 3)
last4 <- substr(phone, nchar(phone) - 3, nchar(phone))

cat("Hi, ", name_upper, ". A verification code has been sent to ", first3, " -xxxxx ",last4, "\n")