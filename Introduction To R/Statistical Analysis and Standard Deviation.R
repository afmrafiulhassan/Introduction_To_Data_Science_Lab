install.packages("dplyr")

dataset <-read.csv ("C:/Users/student/Documents/iris.csv" , header=TRUE, sep=',')

head(dataset)

summary(dataset)

#represent
dataset$species <- factor(dataset$species, levels=c("setosa","versicolor","virginica"),labels = c(1,2,3))
dataset


str(dataset)

# Standard Deviation

s <- dataset$sepal_length
sd(s)


library(dplyr)
dataset%>%summarise_if(is.numeric, sd)

#Select Null Values
#True = missing values and False= has value

is.na(dataset)

#Finding a Specific column of null values

colSums(is.na(dataset))


#Finding the specific row of null values

which(is.na(dataset$sepal_length))


#remove null values from iris dataset

remove <-na.omit(dataset)
remove
