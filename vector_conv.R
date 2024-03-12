# Assign city names to `city` 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Store temperature values in `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Convert temperature into Celsius and overwrite the original values of 'temp' with these Celsius values
temp <- (temp-32)*5/9
# Create a data frame `city_temps` 
city_temps <- data.frame(city=city,temp=temp)

# Define an object `x` with the numbers 1 through 100
x<-(1:100)
# Compute the sum 
sum(1/x^2)