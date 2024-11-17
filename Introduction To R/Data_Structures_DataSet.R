#                         Data Structure _ DataSet

patientID <- c(1,2,3,4)
age <- c(25,34,28,52)
diabetes <- c("Type1","Type2","Type1","Type2")
status <- c("Poor","Improved","Excellent","Poor")


patientdata <- data.frame(patientID, age, diabetes, status)
patientdata



#To Add New Row


new_row <- c(5, 42, "Type1", "Poor", "A-")
patientdata <- rbind(patientdata, new_row)
patientdata





# List


g <- "My First List"
h <- c(25,26,18,39)
j <- matrix(1:10, nrow=5)
k <- c("one", "two", "three")
mylist <- list (title=g, ages= h, j,k)
mylist







# User Input by readline



var1 <- readline(prompt = "Enter Any Value: ")
var2 <- readline(prompt = "Enter Any Number: ")

var2 <- as.integer(var2)
var1
var2


# Multiple Input from user by scan function (press enter twice to terminate the process)



x <- scan()
print(x)





# String type input through scan()


y <- (what= " ")
y




# Entering Data From Keyboard Using Text Editor


myData <- data.frame(age=numeric(0), gender=character(0), weight=numeric(0))
myData<- edit(myData)




# Export data set to .csv 


write.csv(myData, "D:/9th Semester (Fall_24-25)/IDS Lab/Task & Practices/myData.csv", row.names=FALSE)

newData <- read.csv("D:/9th Semester (Fall_24-25)/IDS Lab/Task & Practices/iris.csv", header=TRUE)





# To access 5 to 10 row

newData[5:10,]


# To access a specific row

newData[c(5, 7),]


# For Subset

subset(newData, species=="setosa")
subset(newData, petal_length >= 6)
