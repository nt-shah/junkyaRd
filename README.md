# junkyaRd

## Usage
The package _junkyaRd_ essentially is a dump of random functions. At the moment it contains three functions that I created for an assignment in my course. But it essentially aims to be a random spot to dump functions in. 

```r
devtools::install_github("nt-shah/junkyaRd")
library(junkyaRd)
```

## Functions

#### remind_me()

This function contains no arguments; by simply running it, a list of things you need to remmeber pops up. In particular, the remind_me() function gives you a list of things you may need to remember or is like a handy list for a reunion with old friends, or just a small sleepover/trip/gathering with friends & family. 

This is all you do and see what it produces! ;)

```r
remind_me()
```


#### cheat()

This function contains only one argument: `question_number`. You must insert a question number from Assignment 3.1 (for e.g. you simply type 1 or 14 or 7). The function then returns the solution to that question. This is how you would use it: 

```r
cheat(1)      # to get the solution for Q3.1.1
cheat(9)      # to get the solution for Q3.1.9
```

_Note: The cheat() function only works for specific questions at the moment (namely: 1, 9, 16)._


#### make_art()

This function generates random art. It has the following arguments: `seed`, `n` and `range_max`. The `seed` helps generate random datasets (the seed must be a number between 1 to 500). The `n` argument helps specify how many datapoints you want in your artwork (n must be between 1-2000, else it takes too long to run). Lastly, `range_max` is part of the scale_size ggplot function; and lets you restrict how spread out you want your artwork (range_max must be between 1-50). 

Different seeds produce different styles of artwork, so go wild and experiment - and switch up `n` and `range_max` to see all the cool things you can make! 

Here is some example code for some art pieces:
```r
make_art(seed = 24, n = 4, range_max = 15)
make_art(seed = 348, n = 500, range_max = 35)
make_art(seed = 278, n = 785, range_max = 4)
make_art(seed = 163, n = 250, range_max = 20)
```
