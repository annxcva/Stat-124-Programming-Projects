word_otd <- "HOOPS"

for (i in 1:5) {
  guess <- readline(prompt = "Guess the word (all caps): ")
  hint <- ""
  
  if (nchar(guess) != 5) {
    stop("Invalid input.")
  }
  if (guess == word_otd) {
    cat("Congratulations! You guessed the word: ", word_otd, "\n")
    break
  } else {
    if (i == 5) {
      cat("You lost. The word was: ", word_otd, "\n")
      break
    }
    for (j in 1:5) {
      if (substr(guess, j, j) == substr(word_otd, j, j)) {
        hint <- paste0(hint, substr(guess, j, j))
      } else {
        if (substr(guess, j, j) %in% strsplit(word_otd, '')[[1]]) {
          hint <- paste0(hint, "?")
        } else {
          hint <- paste0(hint, "X")
        }
      }
    }
    cat("Hint:", hint, "\n", "You have", 5-i, "lives left.")
  }
}