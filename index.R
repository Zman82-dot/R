library(dslabs)
data(murders)

murder_rate <- murders$total / murders$population * 1000000
ind <- murder_rate < 0.71
ind <- murder_rate <= 0.71
murders$state[ind]
sum(ind)

west <- murders$region == "West"
safe <- murder_rate <= 1


ind <- safe & west
murders$state[ind]
ind <- which(murders$state == "California")
murder_rate[ind]


# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate < 1

# Create a vector ind for states in the Northeast and with murder rates lower than 1. 
northeast <- murders$region == "Northeast"
safe <- low
# Names of states in `ind` 
ind <- safe & northeast
murders$state[ind]