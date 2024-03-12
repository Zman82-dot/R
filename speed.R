    name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)

# Convert time to hours
time_hours <- time / 60

# Calculate speed in miles per hour
speed <- distance / time_hours

# Index to find Olivia's time
olivia_time_minutes <- time[name == "Olivia"]

# Convert Olivia's time to hours
olivia_time_hours <- olivia_time_minutes / 60

# Display Olivia's time in hours
olivia_time_hours

# Index to find Mandi's distance
mandi_distance <- distance[name == "Mandi"]

# Index to find Mandi's time
mandi_time_minutes <- time[name == "Mandi"]

# Convert Mandi's time to hours
mandi_time_hours <- mandi_time_minutes / 60

# Calculate Mandi's speed in miles per hour
mandi_speed <- mandi_distance / mandi_time_hours

# Display Mandi's speed in miles per hour
mandi_speed
# Calculate speeds for all runners
speed <- distance / (time / 60)

# Find the index of the runner with the fastest speed
fastest_index <- which.max(speed)

# Get the name of the fastest runner
fastest_runner <- name[fastest_index]

# Display the name of the fastest runner
fastest_runner
