A <- readline(prompt = "Write your string -> ")
A <- tolower(A)
A <- gsub("[[:punct:]]", "", A)
A <- gsub("\\s", "", A)
j <-  nchar(A)

for (i in 1:floor(nchar(A)/2)){
  if(substr(A,i,i) != substr(A,j,j)){
    break()
  }
  j <- nchar(A)-i
}

if(j == floor(nchar(A)/2) + 1 | j == i){ 
  print("Palindrome cuy")
} else {
  print("Bukan palindrome")
}
