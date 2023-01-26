# This is a function named "remind_me"
# which prints a list of things you needed to be reminded of!

# This will specifically remind you of things you need to remember for your
# reunion with friends from school (movie lists, grocery lists, etc.)

remind_me <- function() {

  ## Listing things to be "reminded of":

  # Movie ideas:
  good_movies <- c("Goodbye Lenin","Fargo", "Bicycle Thief",
                   "Darjeeling Limited", "Blue Velvet", "Apocalypse Now",
                   "Annie Hall", "Manhattan", "Pulp Fiction", "Platoon")

  stupid_movies <- c("Jupiter Ascending", "The Chase", "Just Married",
                     "Confessions of a Teenage Drama Queen", "Troll 2",
                     "The Ugly Truth", "The Apple", "Road House",
                     "The Wicker Man", "The Room")

  groceries_to_buy <- c("Tortilla wraps", "Milk", "Cereal", "Bell peppers",
                        "Jalapeños", "Cheetos", "Other chips", "Ice-cream",
                        "Eggs", "Siracha", "Earl Grey tea", "Rice", "Pitas")

  miscellaneous <- c("Exchange art", "90s pop song Karaoke",
                     "Go to Mrs. Maple's waffles", "Play red hands",
                     "Make tiramisu", "Go to the river after midnight",
                     "Paint kites")


  print("Good movies----------------------------------------------------------")
  print(good_movies)

  print("                                                                     ")
  print("                                                                     ")

  print("Good Trashy movies---------------------------------------------------")
  print(stupid_movies)

  print("                                                                     ")
  print("                                                                     ")

  print("Groceries to buy ----------------------------------------------------")
  print(groceries_to_buy)

  print("                                                                     ")
  print("                                                                     ")

  print("Things we must do ---------------------------------------------------")
  print(miscellaneous)


}

