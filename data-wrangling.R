murders <- mutate(murders, rate=total/population*100000)

filter(murders, rate <= 0.71)

new_table <- select(murders,state,region,rate)
filter(new_table,rate <=0.71)

murders %>% select(state,region,rate) %>% filter(rate <= 0.71)

grades <- data.frame(names=c("John","Juan","Jean", "Yao"),exam_1=c(95,80,90,85), exam_2=c(90,85, 85,90))
grades

class(grades$names)
grades <- data.frame(names=c("John","Juan","Jean", "Yao"),exam_1=c(95,80,90,85), exam_2=c(90,85, 85,90),stringsAsFactors = FALSE) # nolint


# Note that if you want ranks from highest to lowest you can take the negative and then compute the ranks  # nolint
x <- c(88, 100, 83, 92, 94)
rank(-x)

# Defining rate
rate <-  murders$total/ murders$population * 100000

# Redefine murders to include a column named rank
# with the ranks of rate from highest to lowest
murders <- mutate(murders, rank(-rate))


# Load dplyr
library(dplyr)

# Use select to only show state names and abbreviations from murders
select(murders,state,abb)

# Add the necessary columns
murders <- mutate(murders, rate = total/population * 100000, rank = rank(-rate))

# Filter to show the top 5 states with the highest murder rates
filter(murders,rank <= 5)

# Use filter to create a new data frame no_south
no_south <- filter(murders, region != "South")
# Use nrow() to calculate the number of rows
nrow(no_south)

# Create a new data frame called murders_nw with only the states from the northeast and the west
murders_nw <- filter(murders, region %in% c("Northeast", "West"))
# Number of states (rows) in this category
nrow(murders_nw)

# add the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# Create a table, call it my_states, that satisfies both the conditions 
my_states <- filter(murders,population,rate < 1)
# Use select to show only the state name, the murder rate and the rank
select(my_states, state, rate, rank)

# add the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# Create a table, call it my_states, that satisfies both the conditions 
my_states <- filter(murders,region %in% c("Northeast", "West")& rate < 1)
# Use select to show only the state name, the murder rate and the rank
select(my_states, state, rate, rank)

# Load library
library(dplyr)

## Define the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# show the result and only include the state, rate, and rank columns, all in one line, in that order
murders %>% select(state,rate) %>% filter(rate <1)

filter(murders, region %in% c('Northeast', 'West') & rate < 1) %>% select(state, rate, rank)

# Loading the libraries
library(dplyr)
data(murders)

# Create new data frame called my_states (with specifications in the instructions)
 my_states <- murders %>% 
    mutate(rate =  total / population * 100000, rank = rank(-rate)) %>%
    filter(region %in% c("Northeast", "West") & rate < 1) %>%
    select(state, rate, rank)