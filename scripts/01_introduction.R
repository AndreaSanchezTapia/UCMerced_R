# To install packages from CRAN----
install.packages("dplyr") #in quotes because dplyr is not an object
# install.packages("tidyverse") # this is an umbrella for many other packages

# Check where you are working----
# "get working directory"
getwd()

# Hashtags allow to comment
# Four lines at the end (----) to create sections in RStudio

# Basic calculator functions
3 + 5
# *, ^, /,

# Creating objects, preferably with <- for clarity, but = can be used too
# <- can be typed using alt and minus sign (-)
# won't print anything
x <- 2 + 5
y = 2 + 3
# to print
x
(x <- 2 + 5) #

# list objects in your workspace
ls()
x
y

# calculations with objects
weight_kg <- 57.5
2 * weight_kg

double_w <- 2 * weight_kg
weight_kg <- 60
double_w <- 2 * weight_kg

### to get help
weight_kg <- sqrt(10)

?sqrt
help(sqrt)
# list arguments
args(sqrt)

# when you don't know the name of the function
??mean
# or select the name of the function and click F1

# a function with arguments
round(3.14159)

args(round)
?round
help(round)

round(3.1415, digits = 3)
round(3.14159, 3)
round(3.14159, 0)
round(3.14159)
round(digits = 3, x = 3.1415)

??kruskal

# vectors----
#function c() creates vectors ("concatenates")
weight_g <- c(50, 60, 65, 82)
class(weight_g)

"dog"
animals  <- c("mouse", "rat", "dog")
animals
class(animals)

## logical ----
tf <- c(TRUE, FALSE, TRUE)
class(tf)
tf <- c(T, F, T)
tf

# integer
integ <- c(1L, 2L, 3L)
integ
class(integ)

# function str - structure to explore the structure of objects
str(integ)
str(animals)

# a vector only can have one type
num_char <- c(3, "a")
num_char
class(num_char)

c(1, 2, 3, TRUE, FALSE)
c(1L, 2L, 3L, TRUE, FALSE)
c(TRUE, FALSE, "a")


# fcts useful when working with vectors
animals <- c("mouse", "rat", "dog", "cat")
str(animals)
length(animals)
dim(animals) # won't work with vectors


num_v <- c(34, 36, 78, 89)
sum(num_v)
mean(num_v)
sd(num_v)

# subsetting vectors with brackets----
animals <- c("mouse", "rat", "dog", "cat")
animals[2]
# 2, 3 elements?
animals[2, 3] #nope, you have to give a vector
c(2, 3)
animals[c(2, 3)]
# it can be a logical vector
c(T, F, F, T)
animals[c(T, F, F, T)]

selected <- c(T, F, F, T)
selected
animals[selected]
sel.animals <- animals[selected]
sel.animals

#you can concatenate vectors or individual elements
animals
more_animals <- c(animals, animals)
more_animals
more_animals2 <- c(animals, animals, "goat")
more_animals2
more_animals[4:8]


# other useful functions to create numeric vectors----
1:10 # ranges in 1 intervals
1.5:10 # ranges in 1 intervals
3L:50L #integer
#sequence: look at the help. from, to, by (interval width)
seq(1, 10)
1:10
seq(1, 10, 2)
seq(0, 100, 25)

# logical clauses----
3 == 5
3 == 3
(3 + 2) == 5
3 != 3
3 != 5
3 > 5
# %in%
#! is negation

w <- c(21, 34, 39, 54, 55)
w > 30 #creates a logical vector
w[w > 30]
# | OR (union) and  & AND (intersection)
w[w > 50 | w <  22]
w[w > 50 & w < 22]

#belonging
interest <- c(21, 39)
w %in% interest
w[w %in% interest]

w[!w %in% interest]
w[w !%in% interest] # this is not good syntax


#use belonging above rather than equality becaus R compares pairwise elements:
animals      <- c("mouse", "rat", "dog", "cat")
more_animals <- c("rat", "cat", "dog", "duck", "goat")

animals %in% more_animals
animals == more_animals
#it will recycle the shortest vector.

