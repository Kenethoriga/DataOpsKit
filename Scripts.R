####Introduction to Basic R Statistics####
####Getting Started with R Studio####

# Check your current directory
getwd()

# Set your working directory
setwd("/Users/paulkagame/Desktop/statistics")  # Update this path to your desired directory

# List files in your directory
list.files()

####Installing and Loading Packages####

# Install ggplot2 package
install.packages("ggplot2")

# Install asbio package
install.packages("asbio")

# Load ggplot2 package
library(ggplot2)

# Display help for asbio package
help(package="asbio")

####Functions & Their Arguments####

# Assign 9 to variable 'a'
a <- 9

# Calculate the square root of 'a' and assign it to 'b'
b <- sqrt(a) # the sqrt() function calculates the square root and assigns value to b. this function has only one argument

# Display 'b'
b

# Display the arguments allowed by sqrt() function
args(sqrt)

# Display the arguments allowed by round() function
args(round)

# Round 4.598 to the nearest integer
round(4.598)

# Round 4.598 to 1 decimal place
round(4.598, digits = 1)

# Calculate the mean of numbers from 0 to 200
mean(0:200)

####Getting Help For R Functions####

# Display help for mean() function
?mean

####Create an Object####

# Assign 2 to variable 'a'
a <- 2

# Display the class of 'a'
class(a)

# Display the type of 'a'
typeof(a)

####Value-based vs referenced-based####

# Assign 10 to variable 'a'
a <- 10

# Assign 'a' to variable 'b'
b <- a

# Assign 0 to variable 'a'
a <- 0

# Display 'a'
a

####House Keeping####

# Display variables or objects in the current session
objects()

# Remove variables 'x' and 'y' from the current session
rm(x,y)

####Data Classes in R####

# Assign "kagame" to variable 'e'
e <- "kagame"

# Display the class of 'e'
class(e)

# Assign 2 to variable 'f'
f <- 2

# Display the class of 'f'
class(f)

# Assign 2 as an integer to variable 'g'
g <- 2L

# Display the type of 'g'
typeof(g)

####Checking Data Classes in R####

# Check if 'a' is numeric
is.numeric("2")

# Check if 'a' is character
is.character("two")

# Check if 'a' is character
is.character(2)

# Check if 'a' is character
is.character("2")

####Converting Data Classes####

# Convert 'a' to numeric
as.numeric(a)

# Convert 'a' to integer
as.integer(a)

# Convert 'a' to character
as.character(a)

# Convert 'a' to logical
as.logical(a)

####Data Structures####

####Vectors####

# Create a vector 'x' with 8 elements
x <- c(8,5,10,13,2,7,15,20)

# Display 'x'
x

# Display the class of 'x'
class(x)

# Display the structure of 'x'
str(x)

# Display the type of 'x'
typeof(x)

# Display the length of 'x'
length(x)

# Calculate the mean of 'x'
mean(x)

# Display the maximum value of 'x'
max(x)

# Display the minimum value of 'x'
min(x)

# Display the quantiles of 'x'
quantile(x)

# Display help for IQR() function
?IQR()

###other ways of creating a vector###

# Create a vector 'a' with integers from 1 to 6
a <- 1:6

# Create a vector 'a' with integers from 1 to 6 using seq() function
a <- seq(1,6)

# Display help for seq() function
?seq

# Create a vector 'a' with integers from 5 to 17 with a difference of 3
a <- seq(from=5, to=17, by=3)

####indexing in Vectors####

# Display the 5th element of 'x'
x[5]

# Display all elements of 'x' except the 5th element
x[-5]

# Display the 2nd to 5th elements of 'x'
x[2:5]

# Display the elements of 'x' greater than 5
x[x>5]

####Letters####

# Display all lowercase letters
letters

# Display the 5th letter
letters[5]

# Display the 1st, 4th, and 7th letters
letters[c(1,4)]

# Display the 1st to 7th letters
letters[1:7]

# Display the 7th to 1st letters
letters[7:1]

# Display every 3rd letter from 1st to 15th
letters[seq(1,15,3)]

####Matrix####

# Create a matrix 'mat' with numbers from 1 to 12 in 3 rows
mat <- matrix(1:12, nrow = 3, byrow = TRUE)

# Display 'mat'
mat

# Display the class of 'mat'
class(mat)

# Display the mode of 'mat'
mode(mat)

# Display row names of 'mat'
rownames(mat)

# Display column names of 'mat'
colnames(mat)

####Indexing-Matrix####

# Display the element in the 1st row and 3rd column
x[1,3]

# Display the element in the 3rd row and 3rd column
x[3,3]

####Lists####

# Create a list 'lst' with 4 components
lst <- list(name="Fred",Wife="Mary",No.children=3,Child.ages=c(4,7,9))

# Display 'lst'
lst

# Display the 4th component of 'lst'
lst[4]

# Select a single element from a variable in a list
lst$Child.ages[2]

# Select the 2nd element of the 4th component of 'lst'
lst[[4]][2]

####Factors####

# Create a vector 'x1' with months
x1 <- c("Dec","Apr","Jan","Mar")

# Sort 'x1'
sort(x1)

# Sort 'x1' as a factor
x1 <- factor(x1)

# Sort 'x1' as a factor with predefined levels
month_levels <- c("Jan","Feb","Mar","Apr","Jun", "July","Aug","Sep","Oct","Nov","Dec")
x1 <- factor(x1, levels = month_levels)

# Display the class of 'x1'
class(x1)

# Display the levels of 'x1'
levels(x1)

# Display the species in the iris dataset as a factor
class(iris$Species)

# Display the levels of the species in the iris dataset
levels(iris$Species)

# Create a pie chart of the species in the iris dataset
pie(table(iris$Species))

# Create a bar plot of the species in the iris dataset
barplot(table(iris$Species))

####Data Frames####

# Create a data frame 'df' with age, sex, and weight
df <- data.frame(age=c(24,27,19), sex=c("F","F","M"), weight=c(64,55,80))

# Display the 2nd element of the 'age' column
df$age[2]

# Replace the 2nd element of the 'age' column with 30
p <- replace(df$age, df$age==27, 30)

# Create a new variable 'n' with replaced values
n <- replace(df$age,df$age>=27,30)

####Indexing Using Conditions####

# Display the elements of 'a' marked by the logical vector 'condition'
a[condition]

# Create a logical vector using a condition
b <- c(1,5,16,11,9)
b > 10

# Display the elements of 'b' greater than 10
b[b > 10]

####Logical Operators#####

# Check if 'x' is less than or equal to 4
x <= 4

# Check if 'x' is less than or equal to 4, 'y' is greater than 0 and less than 10, 'x' is not equal to 4, and 'y' is equal to 6
x <= 4 & y > 0 & y < 10 & x != 4 & y == 6

####Importing and Exporting Data####
###Importing Data####

# Display the working directory
getwd()

# Display the files in the working directory
list.files()

# Install readxl package
install.packages("readxl")

# Load readxl package
library(readxl)

# Read data from an Excel file
data1 <- read_excel("DataExtra.xlsx")

# Read data from an Excel file with missing values
data1 <- read_excel("DataExtra.xlsx",na="?")

# Display the first few rows of 'data1'
View(data1)

# Read data from a CSV file
data2 <- read.csv("DataExtra.csv", sep = ";")

# Display the first few rows of 'data2'
View(data2)

####Exporting Data####

# Write data to a CSV file
write.csv(data2, file = "kagame.csv")

# Display the files in the working directory
list.files()

# Install xlsx package
install.packages("xlsx")

# Install writexl package
install.packages("writexl")

# Load writexl package
library(writexl)

# Write data to an Excel file
write_xlsx(data1, "kagame.xlsx")

####saving data as R Objects####

# Save variables 'x' and 'y' as an R object
save(x,y, file = "xy.RData")

# Load variables 'x' and 'y' from an R object
load(file = "xy.RData")

# Display the files in the working directory
list.files()

####Data Manipulation####
####Subsetting&Filtering####

# Subset iris dataset with Species equal to setosa
setosa <- subset(iris,subset = iris$Species=="setosa")

# Subset setosa species with Petal.Length less than 3
setosa <- subset(iris,subset = iris$Species=="setosa" & iris$Petal.Length<3)

# Subset iris dataset with Species equal to setosa and select Sepal.Length, Sepal.Width, and Species columns
sb <- subset(iris,
       subset = iris$Species=="setosa" & Petal.Length<3,
       select = c("Sepal.Length","Sepal.Width","Species"))

####Merging and Joining####

# Merge data frames 'data1', 'data2', and 'data3'
data <- rbind(data1,data2,data3)

# Merge data frames based on a common column
data <- merge(income, reference, by = "country")

# Use dplyr package to manipulate data
install.packages("dplyr")
library(dplyr)

# Group data by Species, calculate summary statistics, filter based on a condition, and select specific columns
iris %>%
  group_by(Species) %>%
  summarise(Min = min(Sepal.Length),
            Mean = mean(Sepal.Length),
            Max = max(Sepal.Length)) %>%
  filter(Mean < 6) %>%
  select(Species, Min)

####Univariate: Data exploration & visualization####
#Categorical Variable: Frequency Table and Bar plot

# Read data from a CSV file
data2 <- read.csv("DataExtra.csv", sep = ";")

# Plot the frequency of hair color
plot(data2$hair)

# Plot the frequency of eye color
plot(data2$eye)

# Create a frequency table for hair color
ft <- table(data2$hair)

# Create a percentage table for hair color
pt <- prop.table(ft)

# Create a cumulative frequency table for hair color
cumfreq <- cumsum(ft)

# Create a cumulative percentage table for hair color
cumfreqpt <- cumsum(pt)

# Combine frequency, cumulative frequency, percentage, and cumulative percentage tables
tab <- rbind(ft, cumfreq,pt*100,cumfreqpt*100)

# Transpose the table
tab <- t(tab)

# Display the table
tab

# Create a bar plot for the table
barplot(tab)

# Create a pie chart for hair color
pie(pt, labels = names(pt), col = c("Black", "Beige", "Chocolate", "Red"))

# Create a bar plot for eye color
barplot(table(data2$eye), col = c("deepskyblue","beige","chocolate","darkgreen"))

# Continous Variable; Summary Statistics (Boxplot and Histograms)

# Calculate summary statistics for Sepal.Length
mean <- mean(iris$Sepal.Length)
median <- median(iris$Sepal.Length)
mode <- Mode(iris$Sepal.Length)
stdev <- sd(iris$Sepal.Length)
quantile <- quantile(iris$Sepal.Length)
range <- IQR(iris$Sepal.Length)
variance <- Var(iris$Sepal.Length)

# Display the mean
mean

# Display the median
median

# Display the mode
mode

# Display the standard deviation
stdev

# Display the quantiles
quantile

# Display the interquartile range
range

# Display the variance
variance

# Create a boxplot for Sepal.Length
boxplot(iris$Sepal.Length)

# Create a histogram for Sepal.Length
hist(iris$Sepal.Length, col = "cornflowerblue", breaks = seq(4, 8, 0.25))

# Display the summary statistics for the faithful dataset
summary(faithful)

# Calculate the quantiles for eruptions in the faithful dataset
Quantile(faithful$eruptions)

# Calculate the interquartile range for eruptions in the faithful dataset
IQR(faithful$eruptions)

# Check for normality of eruptions in the faithful dataset
shapiro.test(faithful$eruptions)

####Bivariate Data Exploration and Visualization####
##Two categorical variables;Cross-Tabulations

# Create a contingency table for eye and hair color
hectable <- table(data2$eye,data2$hair)

# Display the contingency table
hectable

# Display the marginal totals for eye color
margin.table(hectable, margin = 1)

# Display the marginal totals for hair color
margin.table(hectable,margin = 2)

# Create a mosaic plot for eye and hair color
mosaicplot(hectable,
           xlab = "Eye Color",
           ylab = "Hair Color",
           main = "Mosaic Plot of hair and color",
           col = c("black","beige","chocolate4","darkred"))

# Create a bar plot for eye color per hair color category
barplot (hectable,
         legend.text = rownames(hectable),
         ylab = "Frequency",
         xlab = "Hair Color",
         main = "Eye Color per hair color category",
         col = c("deepskyblue","beige","chocolate","darkgreen"))

# Continous & categorical variable: Summary stats

# Calculate the mean Sepal.Length for each Species
tapply(iris$Sepal.Length,iris$Species, mean)

# Calculate the standard deviation Sepal.Length for each Species
tapply(iris$Sepal.Length,iris$Species, sd)

# Display the summary statistics for Sepal.Length for each Species
tapply(iris$Sepal.Length,iris$Species, summary)

# Continous & categorical variable; boxplots

# Create a boxplot for Sepal.Length per Species
boxplot(iris$Sepal.Length~iris$Species)

# Create a histogram for Sepal.Length per Species
par(mfrow = c(1,1))
hist(iris[iris$Species=="setosa", "Sepal.Length"], col = "cornflowerblue", breaks = seq(4,8,0.5))
hist(iris[iris$Species=="versicolor", "Sepal.Length"], col = "cornflowerblue", breaks = seq(4,8,0.5))
hist(iris[iris$Species=="virginica", "Sepal.Length"], col = "cornflowerblue", breaks = seq(4,8,0.5))

##Two continous variables; Correlation & Scatter plot

# Create a scatter plot for Petal.Length vs Sepal.Length with different colors for each Species
plot(iris$Petal.Length, iris$Sepal.Length,
     xlab = "Petal Length (cm)",
     ylab = "Sepal Length (cm)",
     col = as.numeric(iris$Species),
     pch = as.numeric(iris$Species)+14,
     )

# Add a legend for the scatter plot
legend("bottomright", 
       legend = unique(iris$Species),
       pch = as.numeric(iris$Species)+14, 
       col = 1:3)

# Use ggplot and dplyr to create a scatter plot for Petal.Length vs Sepal.Length with different colors for each Species
install.packages("dplyr")
install.packages("ggplot2")
library(dplyr)
library(ggplot2)     

iris %>%
  ggplot(aes(x=Petal.Length,
             y=Sepal.Length,
             color=Species))+
  geom_point()+
  facet_grid(iris$Species)

# Filter data for specific Species and create a scatter plot
iris%>%
  filter(Species%in%
           c("versicolor","virginica"))%>%
  ggplot(aes(x=Petal.Length,
             y=Sepal.Length,
             color=Species))+
  geom_point()
