####Introduction to Basic R Statistics####
####Getting Started with R Studio####
getwd() #check your current directory
setwd("/Users/paulkagame/Desktop/statistics")  #set your working directory
list.files() #list files in your directory
list.files()
####Installing and Loading Packages####
install.packages("ggplot2")
install.packages("asbio")
library(ggplot2)
help(package="asbio")
install.packages("ggplot2")
install.packages("asbio")   #collection of statistical tools for biologist
library (ggplot2)           #loading the package
help (package ="asbio")
library()                   #see all packages installed
installed.packages()        #See all available packages
search()                    #see packages currently loaded

####Functions & Their Arguments####
a <- 9
b <- sqrt(a) #the sqrt() functioncalculates the square root and assigns value to b. this function has only one argument
b
args(sqrt) #to check the arguments allowed

args(sqrt)

round(4.598)               #Function round() rounds off the given value
args(round)                #A function with two arguments
?round                     #help function
round(4.598, digits = 1)
round(4.598, 1)

mean(0:200)
args(mean)
?mean

####Getting Help For R Functions####
?mean                     #goes to the page that gives the explanation of the function
??mean                    #goes to the page with functions related with '...mean...'
apropos("mean")           #search on more options of or alternatives for a certain function
example(mean)             #see worked examples



####Create an Object####
a <- 2
class(a)
typeof(a)               ##a double allows you to store numeber as decimals. it is the default treatment for numbers


####Value-based vs referenced-based####
a <- 10
b <- a;a
a <- 0
a



objects()
####House Keeping####
objects()                 #display variaables or objects in the current session
rm(x,y)                   #remove the x and y variables in the current session


####Data Classes in R####
e <- "kagame"
class(e)
f <- 2
class(f)
g <- 2L
class(g)
typeof(f)   ##a double allows you to store number as decimals. it is the default treatment for numbers


####Checking Data Classes in R####
#is.numeric()
#is.integer()
#is.complex()
#is.character()
#is.logical()

is.numeric("2")
is.character("two")
is.character(2)
is.character("2")

####Converting Data Classes####
as.numeric()
as.integer()
as.character()
as.logical()

a <- "2.3";a
a+1
class(a)
a <- as.numeric(a)
a+1
class(a)



####Data Structures#####

####Vectors####
x <- c(8,5,10,13,2,7,15,20) #creates a vector with 8 elements
x <- c(8,5,10,13,2,7,15,20);x
class(x)
str(x)
typeof(x)
length(x)
mean(x)
max(x)
min(x)
quantile(x)
?IQR()
###other ways of creating a vector####
a <- 1:6;a
a <- seq(1,6);a
?seq

a <- seq(from=1, to=6);a

b <- c(5, 8, 11, 14, 17)
b <- seq(5, 17, 3)
a <- seq(from=5, to=17,  by=3);a

####indexing in Vectors####
x <- c(8,5,10,13,2,7,15,20);x
x[5]
x[-5]
x[2:5]
x[x>5]

####Letters####
letters
letters[5]
letters[c(1,4)]
letters[1:7]
letters[7:1]
letters[seq(1,15,3)]


####Matrix####
?matrix

mat <- matrix(1:12, nrow = 3, byrow = TRUE);mat


x <- matrix(1:12, nrow = 3, byrow = TRUE);x
?matrix
class(mat) #data type
mode(mat) #data mode



?row.names
rownames(mat) <- LETTERS[1:3];mat

?colnames
colnames(mat) <- c("blue","green","purple", "pink");mat
####Indexing-Matrix####
x[1,3];x
x[3,3];x
####Lists####

?list

lst <- list(name="Fred",Wife="Mary",No.children=3,Child.ages=c(4,7,9));lst #list a list of 4 components
?list
####Indexing List####
lst$name
lst[4]

#selecting a single element from a variable in a list
lst$Child.ages[2]
lst[[4]][2]

####Factors####

x1 <- c("Dec","Apr","Jan","Mar");x1
sort(x1)


sort(x1) #does not sort the way we want: It is sorted in an alphabetical order

?sort
class(x1)
?factor
x1 <- factor(x1)
class(x1)
sort(x1)
x1 <- factor(x1, levels = month_levels)
#We define a factor with predefined levels

month_levels <- c("Jan","Feb","Mar","Apr","Jun", "July","Aug","Sep","Oct","Nov","Dec")

x1 <- factor(x1, levels = month_levels)

sort(x1)


##The only categorical variable (species) in the iris dataset is already a factor

View(iris)
pie(table(iris$Species))
class(iris$Species)
levels(iris$Species)
?piechart

barplot(table(iris$Species))


##Turn both the hair and eye in the hair color data set into factors. 
##If you do not specify the levels R will do it automatically
getwd()
list.files()

data2 <- read.csv("HairEyeColor.csv")
View(data2)

class(data2$hair)
class(data2$eye)

levels(data2$hair)
levels(data2$eye)

#how do we convert variable to a factor?

data2$hair <- factor(data2$hair)
data2$eye <- factor(data2$eye)

class(data2$hair)
class(data2$eye)

levels(data2$hair)
levels(data2$eye)

plot(data2$eye)
barplot(table(data2$hair))
barplot(table(data2$eye))

####Data Frames####
df <- data.frame(age=c(24,27,19), sex=c("F","F","M"), weight=c(64,55,80));df
?data.frame

df$age[2] <- 30
df$age

?replace
df$age[2]
p <- replace(df$age, df$age==27, 30)
p

#try replace a value


n <- replace(df$age,df$age>=27,30);n

####Indexing Using Conditions####
#indexing using a logical factor
a <- c(1,5,16,11,9);a
condition <- c(TRUE, TRUE, FALSE, FALSE, TRUE)


#output consist of elements whose position is marked by TRUE
a[condition]

#Generating a logical vector using Condition
b <- c(1,5,16,11,9);b
b>10
b>=5
b[b>10]
#I want values no logical vectors



b[b<10]


####Logical Operators#####
#Are the following TRUE or FALSE
x <- 4
y <- 6

x =< 4
#Why is there an error






x <= 4

x >= 0 & y < 10
x!=4
y==6
x+y>0 | y-x<0




####Importing and Exporting Data####
###Importing Data####

getwd()
list.files()

install.packages("readxl")
library(readxl)
data1 <- read_excel("DataExtra.xlsx")
View(data1)



data1 <- read_excel("DataExtra.xlsx",na="?")
?read_excel
View(data1)



colnames(data1)[1] ="names"
View(data1)


##reading csv files


data2 <- read.csv("DataExtra.csv", sep = ";")


View(data2)

colnames(data2)[1] ="names"

View(data2)

####Exporting Data####
write.csv(data2, file = "kagame.csv")
list.files()




install.packages("xlsx")
install.packages("writexl")
library(writexl)
write_xlsx(data1, "kagame.xlsx")


####saving data as R Objects####
x <- c(1,2,3,4)
y <- c("A","B","C","D")
save(x,y, file = "xy.RData")

load(file = "xy.RData")
list.files()





####Data Manipulation####
####Subsetting&Filtering####
iris
View(iris)







?subset
#Subset setosa only
setosa <- subset(iris,subset = iris$Species=="setosa")
View(setosa)




#subset setosa species with petal length less than 3




setosa <- subset(iris,subset = iris$Species=="setosa" & iris$Petal.Length<3)
View(setosa)

#but I only want sepal length,width and name
sb <- subset(iris,
       subset = iris$Species=="setosa" & Petal.Length<3,
       select = c("Sepal.Length","Sepal.Width","Species"))
View(sb)

####Merging and Joining####
?rbind
data <- rbind(data1,data2,data3)
?cbind

?merge
data <- merge(income, reference, by = "country")

#Using the dplyr package
install.packages("dplyr")
library(dplyr)
iris %>%
  group_by(Species) %>%
  summarise(Min = min(Sepal.Length),
            Mean = mean(Sepal.Length),
            Max = max(Sepal.Length)) %>%
  filter(Mean < 6) %>%
  select(Species, Min)

#exploration
heights <- c(2,4,4,NA,6)
max(height)

max(height, na.rm = TRUE)

####Univariate: Data exploration & visualization####
#Categorical Variable: Frequency Table and Bar plot



getwd()
list.files()

hec <- read.csv("HairEyeColor.csv")
View(hec)

class(hec$hair)
class(hec$eye)

levels(hec$hair)
levels(hec$eye)

plot(hec$hair)
plot(hec$eye)

#now try 
?table


plot(table(hec$hair))
plot(table(hec$eye))

#what has the table function done?
#it has created a ft
#Create a ft with absolute frequencies using the table function
ft <- table(hec$hair);ft 

#To turn it into a table with proportions, use prop.table function
pt <- prop.table(ft);round(pt, 2);pt

#get cummulative frequencies
cumfreq <- cumsum(ft);cumfreq
cumfreqpt <- cumsum(pt);round(cumfreqpt,2);cumfreqpt

#Now put everything in one table
#which function do we use to combine different tables?
?cbind
?rbind

tab <- rbind(ft, cumfreq,pt*100,cumfreqpt*100);tab

#transpose your table
?t

tab <- t(tab);tab

#or

#c <- cbind(ft, cumfreq,pt,cumfreqpt);c

colnames(tab) <- c("Freq","Cum.Freq","Prop(%)","Cum.Prop(%)")
tab

##try plotting

barplot(tab)

?barplot
par(mfrow=c(1,1))
barplot(ft,
        main = "Bar Plot for Hair Color",
        xlab = "Hair Color",
        ylab = "Frequency",
        col = c("Black", "Beige", "Chocolate", "Red"),#colors()
        ylim = c(0, 300),
        legend.text = TRUE,
        plot = TRUE
        )

?pie

pie(pt, 
    labels = names(pt), 
    edges = 200, 
    radius = 1.05,
    col = c("Black", "Beige", "Chocolate", "Red"),
    main = "Pie Chart for Hair Color")

#create a dataset of 4 yes and 6 Nos
smoke <- c("Y","N","Y","N","Y","N","Y","N","N","N")
#alternatively use the rep function
#smoke <- c(rep("Yes",4),rep("No",6))
smoke
plot(smoke)
plot(table(smoke))

fsmoke <- factor(smoke);fsmoke
plot(fsmoke,
     main = "Barplot of smokers",
     xlab = "Smoking status",
     ylab = "No. of smokers",
     col = c("red2","green"),
     ylim = c(0,6),
     space = c(0.5))

barplot(table(smoke),
        main = "Barplot of smokers",
        xlab = "Smoking status",
        ylab = "No. of smokers",
        col = c("red2","green"),
        ylim = c(0,6),
        space = c(0.5))


#DO THE SAME WITH HEC$EYE


#Continous Variable; Summary Statistics (Boxplot and Histograms)
install.packages("DescTools")
library(DescTools)
mean <- mean(iris$Sepal.Length);mean
median <- median(iris$Sepal.Length);median
mode <- Mode(iris$Sepal.Length);mode
stdev <- sd(iris$Sepal.Length);stdev
quantile <- quantile(iris$Sepal.Length);quantile
range <- IQR(iris$Sepal.Length);range
variance <- Var(iris$Sepal.Length);variance

#Mean is more susceptible to outliers than median
#standard deviation is more susceptible to outliers that IQR

outlier <- list(Sepal.Length = 5300,
                Sepal.Width = 3.2,
                Petal.Length = 1.3,
                Petal.Width = 0.3,
                Species = "setosa")
iris_outlier <- rbind(iris,outlier) #add outlier
View(iris_outlier)
tail(iris_outlier)

#let us do the comparison
mean(iris$Sepal.Length);mean(iris_outlier$Sepal.Length)
median(iris$Sepal.Length);median(iris_outlier$Sepal.Length)
Mode(iris$Sepal.Length);Mode(iris_outlier$Sepal.Length)
sd(iris$Sepal.Length);sd(iris_outlier$Sepal.Length)
quantile(iris$Sepal.Length);quantile(iris_outlier$Sepal.Length)
IQR(iris$Sepal.Length);IQR(iris_outlier$Sepal.Length)
Var(iris$Sepal.Length);Var(iris_outlier$Sepal.Length)

#summary function produces several summary stats
summary(iris$Sepal.Length)
summary(iris)

boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Length,
        main = "Length of Iris Sepal Leaves",
        ylab ="Leaf Length (cm)")

hist(iris$Sepal.Length,
     main = "Length of Iris Sepal Leaves",
     xlab ="Leaf Length (cm)",
     col = "cornflowerblue",
     breaks = seq(4, 8, 0.25))

###faithful dataset
View(faithful)
head(faithful)
dim(faithful)
names(faithful)
summary(faithful)
Quantile(faithful$eruptions)
IQR(faithful$eruptions)

###check for normality
?par
par(mfrow = c(2,1),
    pty = "m",
    cex.axis = 0.8,
    cex.lab = 1)

hist(faithful$eruptions,
     probability = TRUE,
     breaks = 15,
     main = "Histogram",
     xlab = "Duration of Eruptions",
     ylab = "Density")

boxplot(faithful$eruptions,
        horizontal = TRUE,
        main = "Boxplot",
        xlab = "Duration of Eruptions")

par(mfrow = c(1,1),
    pty = "m",
    cex.axis = 0.8,
    cex.lab = 1)

qqnorm(faithful$eruptions);qqline(faithful$eruptions)

#test for normality
shapiro.test(faithful$eruptions)

####Bivariate Data Exploration and Visualization####
##Two categorical variables;Cross-Tabulations
hectable <- table(hec$eye,hec$hair);hectable
margin.table(hectable, margin = 1); margin.table(hectable,margin = 2)

mosaicplot(hectable)
mosaicplot(hectable,
           xlab = "Eye Color",
           ylab = "Hair Color",
           main = "Mosaic Plot of hair and color",
           col = c("black","beige","chocolate4","darkred"))

barplot (hectable)
barplot (hectable,
         legend.text = rownames(hectable),
         ylab = "Frequency",
         xlab = "Hair Color",
         main = "Eye Color per hair color category",
         col = c("deepskyblue","beige","chocolate","darkgreen"))

#continous & categorical variable: Summary stats
tapply(iris$Sepal.Length,iris$Species, mean)
tapply(iris$Sepal.Length,iris$Species, sd)
tapply(iris$Sepal.Length,iris$Species, summary)

#continous & categorical variable; boxplots
boxplot(iris$Sepal.Length~iris$Species)
boxplot(iris$Sepal.Length~iris$Species,
        main = "Length of Iris Sepal leaves per species",
        ylab = "Sepal leaf length",
        xlab = "Species",
        col = c("deepskyblue","beige","chocolate"))

#continous & categorical varible; histogram
par(mfrow = c(1,1))
hist(iris[iris$Species=="setosa", "Sepal.Length"],
     main = "Setosa",
     xlab = "Sepal leaf length (cm)",
     xlim = c(4, 8),
     ylim = c(0, 25),
     breaks = seq(4,8,0.5))

hist(iris[iris$Species=="versicolor", "Sepal.Length"],
     main = "Versicolor",
     xlab = "Sepal leaf length (cm)",
     xlim = c(4, 8),
     ylim = c(0, 25),
     breaks = seq(4,8, 0.5))

hist(iris[iris$Species=="virginica", "Sepal.Length"],
     main = "Virginica",
     xlab = "Sepal leaf length (cm)",
     xlim = c(4, 8),
     ylim = c(0, 25),
     breaks = seq(4,8, 0.5))

##Two continous variables; Correlation & Scatter plot
plot(iris$Petal.Length, iris$Sepal.Length,
     xlab = "Petal Length (cm)",
     ylab = "Sepal Length (cm)",
     col = as.numeric(iris$Species),
     pch = as.numeric(iris$Species)+14,
     )

legend("bottomright", 
       legend = unique(iris$Species),
       pch = as.numeric(iris$Species)+14, 
       col = 1:3)

#Use ggplot and dplyr
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


#filtering
iris%>%
  filter(Species%in%
           c("versicolor","virginica"))%>%
  ggplot(aes(x=Petal.Length,
             y=Sepal.Length,
             color=Species))+
  geom_point()

  