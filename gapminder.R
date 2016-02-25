library(gapminder)

gap <- gapminder

head(gap)
tail(gap)

class(gap)

# read and write data
write.csv(gap, file = "gap.csv", row.names = FALSE)
a <- read.csv("gap.csv", as.is = TRUE)

gap
colnames(gap)
class(gap$continent)
as.character(gap$continent)

#convert factors to numbers
sucks <- factor(c(1, 3, 4, 4))
as.numeric(sucks)
as.numeric(as.character(sucks))

gap$lifeExp[1:5]
mean(gap$lifeExp)

head(gap)
unique(gap$year)


TRUE == FALSE
TRUE != FALSE
1 > 2
1 <= 6
!(1 <= 6)

"fred" == "ted"
"a" != "a"

countries <- c("Vietnam", "Cambodia", "Canada")
"Canada" %in% countries

dim(gap)
str(gap)
year1977 <- gap[gap$year == 1977, ]

a <- c(1, 3, 5, NA, 3)
a == 3
a[a == 3]

# which is sometimes helpful for logical indexing
a[which(a == 3)]

str(gap$year)
unique(year1977$year)

# unique countries
# average GDP per cap
# rows 345 - 378, column 1-3
unique(gap$country)
mean(gap$gdpPercap)
gap[345:378, 1:3]

a <- 15
compare <- function(a) {
  if (a < 10) {
    print('a is less than 10')
  } else if (a > 10) {
    print('a is more than 10')
  } else {
    print('a equals 10')
  }
}
compare(12)

for (i in 1:10) {
  print(i)
}

b <-  matrix(c(2, 4, 3, 1, 5, 7), 
           nrow = 3, 
           ncol = 2) 
b
apply(b, c(1, 2), compare)


returnr <- function() {
  return(3)
}
returnr()


