library(dslabs)
data(olive)

# Plot the percent palmitic acid versus palmitoleic acid
plot(olive$palmitoleic, olive$palmitic,
     xlab = "Percent Palmitoleic Acid",
     ylab = "Percent Palmitic Acid",
     main = "Scatterplot of Palmitoleic Acid vs Palmitic Acid")


library(dslabs)
data(olive)

# Create a histogram of the percentage of eicosenoic acid
hist(olive$eicosenoic,
     xlab = "Percentage of Eicosenoic Acid",
     ylab = "Frequency",
     main = "Histogram of Eicosenoic Acid Percentage")

library(dslabs)
data(olive)

# Make a boxplot of palmitic acid percentage with separate distributions for each region
boxplot(palmitic ~ region, data = olive,
        xlab = "Region",
        ylab = "Percentage of Palmitic Acid",
        main = "Boxplot of Palmitic Acid Percentage by Region")
