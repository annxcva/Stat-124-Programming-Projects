#### WEEKS 6-7 ASSESSMENT
# Member 1: Anne Christine Amores
# Member 2: Jan Joaquin Bulao



## Item 1
# ver. 1: if-else if
{input <- as.numeric(readline("Input integer from 1 to 7: "))
days <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")

if (is.numeric(input) & input %% 1 == 0 & input %in% 1:7){
    print(days[input])
} else if (is.numeric(input)) {
    print("Invalid input. Please enter an integer from 1 to 7.")
}}


# ver. 2: switch()
{input <- as.character(readline("Input integer from 1 to 7: "))
  
  day <- switch(input, 
                "1" = "Sunday", 
                "2" = "Monday", 
                "3" = "Tuesday", 
                "4" = "Wednesday", 
                "5" = "Thursday", 
                "6" = "Friday", 
                "7" = "Saturday", 
                "Invalid input. Please enter an integer from 1 to 7.")
  print(day)}


# ver. 3: case_when()
{input <- as.numeric(readline("Input integer from 1 to 7: "))

day <- case_when(
  is.numeric(input) & input %% 1 == 0 & input %in% 1:7 ~ c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")[input],
  TRUE ~ "Invalid input. Please enter an integer from 1 to 7.")
print(day)}


       
##Item 2
numbers <- c(1:50)
words <- c("Beep", "Boop", "BeepBoop")
length <- length(numbers)
i = 1
while(i <= length){
  if(i%%2==0 & i%%3==0){
    numbers[i] <- words[3]
  } else if(i%%2==0){
    numbers[i] <- words[1]
  } else if(i%%3==0){
    numbers[i] <- words[2]
  }
  i=i+1
}
print(noquote(numbers))



### Item 3
i <- 1 
#'n' is the max number of * in a row
n <- 6
asterisk <- c()
while (i <= 2*n-1){
  if (i <= n){
    asterisk <- c(asterisk, "*")
  } else{
    j=(2*n-1)-i+2
    asterisk <- asterisk[-j]
    if (length(asterisk)==0) {break}
  }
  print(noquote(asterisk))
  i=i+1
}



## Item 4
{x_inp <- readline("Input: ")
  
  copy = x_inp
  i = 1
  n = nchar(x_inp)
  j = n
  
  while(i<=n){
    switch_letter <- substr(x_inp,j,j)
    substr(copy,i,i)<-c(switch_letter)
    i = i + 1
    j = j - 1
    if(j==0) {break}
  }
  
  cat("Output:", copy)}
