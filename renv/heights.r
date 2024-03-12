library(dslabs)
data(heights)
options(digits = 3)

# Step 1: Calculate the average height
avg_height <- mean(heights$height)

# Step 2: Create a logical vector indicating individuals above average height
ind <- heights$height > avg_height

# Step 3: Count the number of individuals above average height
num_above_avg <- sum(ind)

num_above_avg

library(dslabs)
data(heights)
options(digits = 3)

# Step 1: Calculate the average height
avg_height <- mean(heights$height)

# Step 2: Filter the dataset for individuals who are above average height and are female
num_above_avg_female <- sum(heights$height > avg_height & heights$sex == "Female")

num_above_avg_female

library(dslabs)
data(heights)
options(digits = 3)

# Count the number of females
num_females <- sum(heights$sex == "Female")

# Calculate the proportion of females
proportion_female <- num_females / nrow(heights)

proportion_female


library(dslabs)
data(heights)

# Find the minimum height
min_height <- min(heights$height)

min_height


library(dslabs)
data(heights)

# Find the index of the first individual with the minimum height
index_min_height <- match(min(heights$height), heights$height)

index_min_height

library(dslabs)
data(heights)

# Find the index of the first individual with the minimum height
index_min_height <- match(min(heights$height), heights$height)

# Subset the sex column to determine the individual's sex
individual_sex <- heights$sex[index_min_height]

individual_sex

library(dslabs)
data(heights)

# Find the maximum height
max_height <- max(heights$height)

max_height


library(dslabs)
data(heights)

# Find the minimum and maximum heights
min_height <- min(heights$height)
max_height <- max(heights$height)

# Create a vector x with integers between the minimum and maximum heights
x <- floor(min_height):ceiling(max_height)

x

library(dslabs)
data(heights)

# Find the minimum and maximum heights
min_height <- min(heights$height)
max_height <- max(heights$height)

# Create a vector x with integers between the minimum and maximum heights
x <- floor(min_height):ceiling(max_height)

# Count the number of integers in x that are NOT heights in the dataset
num_not_heights <- sum(!(x %in% heights$height))

num_not_heights
library(dslabs)
data(heights)

# Create a new column ht_cm with heights converted to centimeters
heights2 <- heights
heights2$ht_cm <- heights$height * 2.54

head(heights2)

library(dslabs)
data(heights)

# Create a new column ht_cm with heights converted to centimeters
heights2 <- heights
heights2$ht_cm <- heights$height * 2.54

# Find the height in centimeters of the 18th individual
height_18th_cm <- heights2$ht_cm[18]

height_18th_cm
library(dslabs)
data(heights)

# Create a new column ht_cm with heights converted to centimeters
heights2 <- heights
heights2$ht_cm <- heights$height * 2.54

# Calculate the mean height in centimeters
mean_height_cm <- mean(heights2$ht_cm)

mean_height_cm


library(dslabs)
data(heights)

# Create a new column ht_cm with heights converted to centimeters
heights2 <- heights
heights2$ht_cm <- heights$height * 2.54

# Count the number of females in the heights2 dataset
num_females <- sum(heights2$sex == "Female")

num_females


library(dslabs)
data(heights)

# Create a new column ht_cm with heights converted to centimeters
heights2 <- heights
heights2$ht_cm <- heights$height * 2.54

# Calculate the mean height of females in centimeters
mean_height_females_cm <- mean(heights2$ht_cm[heights2$sex == "Female"])

mean_height_females_cm
