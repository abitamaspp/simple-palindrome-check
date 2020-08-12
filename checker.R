A <- readline(prompt = "Write your string -> ")
b <- tolower(A)
b <- gsub("[[:punct:]]", "", b)
b <- gsub("\\s", "", b)
j <- nchar

#Loop over half of string's length
for (i in 1:floor(nchar(b)/2)){
  if(substr(b,i,i) != substr(b,j,j)){
    break()
  }
  j <- nchar(b)-i
}

#Check result of j
if(j == floor(nchar(b)/2) + 1 | j == i){
  print("String is palindrome")
} else {
  print("String is not palindrome")
}
