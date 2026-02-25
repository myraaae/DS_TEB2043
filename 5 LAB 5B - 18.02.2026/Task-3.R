cat("Check wether an n number is Armstrong or not:", "\n")
cat("---------------------------------------------","\n")

#input
num <- as.numeric(readline(prompt = "Input an integer: "))
originalNum <- num
numOfDig <- nchar(num)
sumOfDig <- 0

while(num > 0){
  digit <- num %% 10
  sumOfDig <- sumOfDig + digit^numOfDig
  num <- num %/% 10 #quotient
}

#check if sum = original number
if (sumOfDig == originalNum) {
  cat(originalNum, " is an Armstrong Number. ")
}else{
  cat(originalNum, " is not an Armstrong Number. ")
}