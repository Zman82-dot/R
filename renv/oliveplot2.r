

library(dslabs)
data(olive)

# Create a histogram of the percentage of eicosenoic acid
hist(olive$eicosenoic,
     xlab = "Percentage of Eicosenoic Acid",
     ylab = "Frequency",
     main = "Histogram of Eicosenoic Acid Percentage")