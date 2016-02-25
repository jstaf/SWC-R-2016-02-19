# make up some data
a <- c(1, 2, 4, 5, 7, NA)
b <- c(4,5,7,2,2, NA)
c <- c(60, 90, 100, 20, 25, 57)

# do ttests
t.test(a, b)
t.test(a, c)

# make our data into what we'd typically see in a dataset
data <- data.frame(a, b, c)

# convert our data to a more friendly format
library(reshape2)
long <- melt(data)

# one-way anova
head(long)
model <- aov(value ~ variable, data = long)
class(model)
TukeyHSD(model)

# two-way anova
dim(long)
long$category2 <- sample(c("first", "second", "third"), 18, replace= T)
model <- aov(value ~ variable * category2, data = long)
TukeyHSD(model)

# note that most stats follow the "anova" format, where you will need to specify a formula (like "value ~ variable") and a dataset
# your dataset will typically need to be in "long format" (use the melt() function from the reshape2 package for this)