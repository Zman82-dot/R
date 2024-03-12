library(dslabs)
data(murders)
total_gun_murders <- murders$total
 plot(population_in_millions, total_gun_murders)
hist(murders$rate)# Store the population in millions and save to population_in_millions 
population_in_millions <- murders$population/10^6



# Create a histogram of this variable
hist(population_in_millions)