# # This is a function named "cheat"
# which gives you answers to specific questions off your assignment!

# Works for Assignment 3.1
# For questions: 4, 6, 8, 11, 17, 18, 31


cheat <- function(question_number) {

  # installing required packages
  if(!require("stringr")) {
    install.packages("stringr")
    library(stringr)
  }

  # Question 3.1.4
  if (question_number == 4) {

    ("Answer to Question 3.1.4 -----------------------------------------------") %>% noquote() %>% print()
    ("# Session > Set Working Directory > Choose Directory...") %>% noquote %>% print()

  }

  # Question 3.1.6
  if (question_number == 6) {

    ("Answer to Question 3.1.6 -----------------------------------------------") %>% noquote() %>% print()
    ("pi_day <- c(3, pi, 'pi')") %>% noquote() %>% print()
    ("pi_day  # you can see that all values get coerced to character") %>% noquote() %>% print()

  }

  # Question 3.1.8
  if (question_number == 8) {

    ("Answer to Question 3.1.8 -----------------------------------------------") %>% noquote() %>% print()
    ("Part (a) ------------------------------------------") %>% noquote() %>% print()

    q31_a <- ("# It tells us that R executes mathematical operations in the common order
          # of PEMDAS: Parentheses, Exponents, Multiplication, and Division (from
          # left toright), Addition and Subtraction (from left to right)")
    str_replace_all(q31_a, "[\r\n]" , "") %>% noquote %>% print()

    ("Part (b) -----------------------------------------------") %>% noquote() %>% print()
    ("(4 + 6 * 2 + (4 + 6) * 2) / 10") %>% noquote %>% print()

  }

  # Question 3.1.11
  if (question_number == 11) {

    ("Answer to Question 3.1.11 -----------------------------------------------") %>% noquote() %>% print()
    ("# gives NA because sample_scores contains missing values") %>% noquote() %>% print()
    ("# Fix this by specifying na.rm = TRUE:") %>% noquote() %>% print()
    ("var(sample_scores, na.rm = TRUE)") %>% noquote() %>% print()
    ("Answer: # variance = 9.7") %>% noquote() %>% print()

  }

  # Question 3.1.17
  if (question_number == 17) {

    ("Answer to Question 3.1.17 -----------------------------------------------") %>% noquote() %>% print()
    ("# length()") %>% noquote() %>% print()

  }

  # Question 3.1.18
  if (question_number == 18) {

    ("Answer to Question 3.1.18 -----------------------------------------------") %>% noquote() %>% print()
    ("install.packages('lme4')") %>% noquote() %>% print()
    ("library(lme4)") %>% noquote() %>% print()

  }

  # Question 3.1.31:
  if (question_number == 31) {

    ("Answer to Question 3.1.31 ----------------------------------------------") %>% noquote() %>% print()
    ("array(NA, c(4,3,5)") %>% noquote() %>% print()

  }


}







