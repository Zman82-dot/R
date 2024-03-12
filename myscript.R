library(dslabs)
data(murders)
# Access population from the dataset and store it in pop
pop <- which.min(murders$population)
pop
which.min(murders$total)
i_min <- which.min(murders$total)
murders$total[i_min]

# Store temperatures in an object 
temp <- c(35, 88, 42, 84, 81, 30)

# Store city names in an object 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Create data frame with city names and temperature 
city_temps <- data.frame(name = city, temperature = temp)

# Define a variable states to be the state names 
states <- murders$state

# Define a variable ranks to determine the population size ranks 
ranks<- rank(murders$population)

# Create a data frame my_df with the state name and its rank
my_df <-data.frame(states=states,ranks=ranks)

# Use the command order to find the vector of indexes that order pop and store in object ord
ord<- order(pop)
order(pop)
# Find the index number of the entry with the smallest population size
i_min <- which.min(pop)
pop[i_min]