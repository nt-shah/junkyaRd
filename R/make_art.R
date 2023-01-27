# # This is a function named "make_art"
# which generates random art on the basis of 3 numbers you put in!

make_art <- function(seed, n, range_max) {

  # main colour palettes we will work with:

  if(!require("ggplot2")) {
    install.packages("ggplot2")
    library(ggplot2)
  }

  if(!require("dplyr")) {
    install.packages("dplyr")
    library(dplyr)
  }

  if(!require("tidyverse")) {
    install.packages("tidyverse")
    library(tidyverse)
  }

  if(!require("wesanderson")) {
    install.packages("wesanderson")
    library(wesanderson)
  }

  if(!require("tibble")) {
    install.packages("tibble")
    library(tibble)
  }

  if(!require("ggthemes")) {
    install.packages("ggthemes")
    library(ggthemes)
  }


  # some restrictions!
  if (seed > 500) {
    stop("Please enter a seed between 1 to 500 only!")
  }

  if (n > 2000) {
    stop("Please enter n less than 2000, else it takes too long to load!")
  }

  if (n == 1 | n < 1) {
    stop("n must be greater than 1 and less than 2000 ")
  }

  if (range_max > 50) {
    stop("Please enter range max betwen 0-50")
  }

  ## Generating our data:
  set.seed(seed) # setting seed
  n <- n # choosing number of data points
  your_data <- tibble(
    x0 = runif(n),
    y0 = runif(n),
    x1 = x0 + runif(n, min = -.2, max = .2),
    y1 = y0 + runif(n, min = -.2, max = .2),
    shade = runif(n),
    size = runif(n)
  )
  your_data # data



  # Style 1 - when seed is between 1 to 75
  if (seed %in% 1:75) {

    art <- your_data %>%
      ggplot(aes(
        x = x0,
        y = y0,
        xend = x1,
        yend = y1,
        colour = shade,
        size = size
      )) +
      geom_area() + # geom_area here
      coord_polar() +
      scale_colour_gradientn(colours = sample(wes_palettes, 1)[[1]]) +
      scale_size(range = c(0, range_max)) +
      theme_void() +
      theme(legend.position = "none")

  }

  # Style 2a - when seed is between 76 to 150
  else if (seed %in% 76:150) {

    art <- your_data %>%
      ggplot(aes(
        x = x0,
        y = y0,
        xend = x1,
        yend = y1,
        colour = shade,
        size = size
      )) +
      geom_line() + # geom_line this time
      coord_polar() + # this has coord_polar
      scale_colour_gradientn(colours = sample(wes_palettes, 1)[[1]]) +
      scale_size(range = c(0, range_max)) +
      theme_void() +
      theme(legend.position = "none")


  }

  # Style 2b - when seed is between 151 to 215
  else if (seed %in% 151:215) {

    art <- your_data %>%
      ggplot(aes(
        x = x0,
        y = y0,
        xend = x1,
        yend = y1,
        colour = shade,
        size = size
      )) +
      geom_line() + # geom_line this time
      # no coord polar
      scale_colour_gradientn(colours = sample(wes_palettes, 1)[[1]]) +
      scale_size(range = c(0, range_max)) +
      theme_void() +
      theme(legend.position = "none")


  }

  # Style 3 - if seed is between 216 to 295

  else if (seed %in% 216:295) {

    art <- your_data %>%
      ggplot(aes(
        x = x0,
        y = y0,
        xend = x1,
        yend = y1,
        colour = shade,
        size = size
      )) +
      geom_point() + # geom_point this time
      scale_colour_gradientn(colours = sample(wes_palettes, 1)[[1]]) +
      scale_size(range = c(0, range_max)) +
      theme_void() +
      theme(legend.position = "none")

  }

  # Style 4a - if seed is between 296 to 367

  else if (seed %in% 296:367) {

    art <- your_data %>%
      ggplot(aes(
        x = x0,
        y = y0,
        xend = x1,
        yend = y1,
        colour = shade,
        size = size
      )) +
      geom_path() + # geom_path this time
      coord_polar() +
      scale_colour_gradientn(colours = sample(wes_palettes, 1)[[1]]) +
      scale_size(range = c(0, range_max)) +
      theme_void() +
      theme(legend.position = "none")

  }


  # Style 4b - if seed is between 368 - 423

  else if (seed %in% 368:423) {

    art <- your_data %>%
      ggplot(aes(
        x = x0,
        y = y0,
        xend = x1,
        yend = y1,
        colour = shade,
        size = size
      )) +
      geom_path() + # geom_path this time
      # no coord polar
      scale_colour_gradientn(colours = sample(wes_palettes, 1)[[1]]) +
      scale_size(range = c(0, range_max)) +
      theme_void() +
      theme(legend.position = "none")

  }


  # Style 5 - if seed is between 424-500

  else if (seed %in% 424:500) {

    art <- your_data %>%
      ggplot(aes(
        x = x0,
        y = y0,
        xend = x1,
        yend = y1,
        colour = shade,
        size = size
      )) +
      geom_polygon() +
      coord_polar() +
      scale_colour_gradientn(colours = sample(wes_palettes, 1)[[1]]) +
      scale_size(range = c(0, range_max)) +
      theme_void() +
      theme(legend.position = "none")

  }

  print(art)

}



