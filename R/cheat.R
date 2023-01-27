# # This is a function named "cheat"
# which gives you answers to specific questions off your assignment!

# Works for Assignment 3.1
# For questions: 1, 9 and 16


cheat <- function(question_number) {

  # Question 3.1.1
  if (question_number == 1) {

    ("Answer to Question 3.1.1 -----------------------------------------------") %>% noquote() %>% print()
    ("set.seed(1)") %>% noquote() %>% print()
    ("grades <- rnorm(n = 60, mean = 8, sd = 1)") %>% noquote() %>% print()
    ("grades[grades > 10] <- 10") %>% noquote() %>% print()
    ("grades[grades < 6] <- 6") %>% noquote() %>% print()

    ("hist(grades, xlim = range(0, 10)) # Histogram of simulated scores for course") %>% noquote %>% print()

  }

  # Question 3.1.9
  if (question_number == 9) {

    ("Answer to Question 3.1.9 -----------------------------------------------") %>% noquote() %>% print()
    ("install.packages('ggstatsplot') # install package ggstatsplot") %>% noquote() %>% print()
    ("library(ggstatsplot)") %>% noquote() %>% print()

    ("tooth_growth <- ToothGrowth  # Tooth growth data set") %>% noquote() %>% print()

    ("ggbetweenstats(tooth_growth, x = supp, y = len, plot.type = 'boxviolin') # plot") %>% noquote() %>% print()

    text_q9 <- ("# It appears that teeth growth is better when taking vitamin C through orange juice (OJ).The mean
                # length (tooth growth) is larger than that of VC (vitamin C) medicines.")
    str_replace_all(text_q9, "[\r\n]" , "") %>% noquote() %>% print()

  }

  # Question 3.1.16:
  if (question_number == 16) {

    ("Answer to Question 3.1.31 ----------------------------------------------") %>% noquote() %>% print()
    ("matrix(data = 1:9, nrow = 3, byrow = TRUE) * rep(seq(3), 3)") %>% noquote() %>% print()

  }


}







