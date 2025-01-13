library(dplyr)
library(ggplot2)

data <- read.csv("D:/9th Semester (Fall_24-25)/IDS Lab/Project/Final_Task [ Plots ]/user_behavior_dataset.csv", header = TRUE, sep = ',')

print(data)


data$User.Behavior.Class.Categorical <- factor(data$User.Behavior.Class,levels = 1:5,labels = c("Very Low", "Low", "Medium", "High", "Very High"))

print(data)

no_of_col <- ncol(data)
no_of_row <- nrow(data)
cat("No of rows in the dataset: ", no_of_row, "\n")
cat("No of columns in the dataset: ", no_of_col, "\n")


str(data)


#Histogram Plots

hist(data$App.Usage.Time..min.day., main = "Histogram of App Usage Time", xlab = "App Usage Time (min/day)", col = "blue")


hist(data$Screen.On.Time..hours.day., main = "Histogram of Screen On Time", xlab = "Screen On Time (hours/day)", col = "blue")


hist(data$Battery.Drain..mAh.day., main = "Histogram of Battery Drain", xlab = "Battery Drain (mAh/day)", col = "blue")


hist(data$Number.of.Apps.Installed, main = "Histogram of Number of Apps Installed", xlab = "Number of Apps Installed", col = "blue")


hist(data$Data.Usage..MB.day., main = "Histogram of Data Usage", xlab = "Data Usage (MB/day)", col = "blue")


hist(data$Age, main = "Histogram of Age", xlab = "Age", col = "blue")


#BoxPlot


ggplot(data, aes(y = App.Usage.Time..min.day.)) + 
  geom_boxplot(fill = "yellow", color = "black") + 
  labs(title = "Boxplot of App Usage Time", y = "App Usage Time (min/day)")


ggplot(data, aes(y = Screen.On.Time..hours.day.)) +
  geom_boxplot(fill = "yellow", color = "black") +
  labs(title = "Boxplot of Screen On Time", y = "Screen On Time (hours/day)")


ggplot(data, aes(y = Battery.Drain..mAh.day.)) +
  geom_boxplot(fill = "yellow", color = "black") +
  labs(title = "Boxplot of Battery Drain", y = "Battery Drain (mAh/day)")


ggplot(data, aes(y = Number.of.Apps.Installed)) +
  geom_boxplot(fill = "yellow", color = "black") +
  labs(title = "Boxplot of Number of Apps Installed", y = "Number of Apps Installed")


ggplot(data, aes(y = Data.Usage..MB.day.)) +
  geom_boxplot(fill = "yellow", color = "black") +
  labs(title = "Boxplot of Data Usage", y = "Data Usage (MB/day)")

ggplot(data, aes(y = Age)) +
  geom_boxplot(fill = "yellow", color = "black") +
  labs(title = "Boxplot of Age", y = "Age")



#Scatter Plot


ggplot(data, aes(x = App.Usage.Time..min.day., y = Battery.Drain..mAh.day.)) +
  geom_point(color = "blue") +
  labs(title = "Scatter Plot of App Usage Time vs. Battery Drain", x = "App Usage Time (min/day)", y = "Battery Drain (mAh/day)")



ggplot(data, aes(x = Screen.On.Time..hours.day., y = Data.Usage..MB.day.)) +
  geom_point(color = "red") +
  labs(title = "Scatter Plot of Screen On Time vs. Data Usage", x = "Screen On Time (hours/day)", y = "Data Usage (MB/day)")



#violin Plot


ggplot(data, aes(x = User.Behavior.Class.Categorical, y = App.Usage.Time..min.day., fill = User.Behavior.Class.Categorical)) +
  geom_violin() +
  labs(title = "Violin Plot of App Usage Time by User Behavior Class", x = "User Behavior Class", y = "App Usage Time (min/day)")


ggplot(data, aes(x = User.Behavior.Class.Categorical, y = Screen.On.Time..hours.day., fill = User.Behavior.Class.Categorical)) +
  geom_violin() +
  labs(title = "Violin Plot of Screen On Time by User Behavior Class", x = "User Behavior Class", y = "Screen On Time (hours/day)")


ggplot(data, aes(x = User.Behavior.Class.Categorical, y = Battery.Drain..mAh.day., fill = User.Behavior.Class.Categorical)) +
  geom_violin() +
  labs(title = "Violin Plot of Battery Drain by User Behavior Class", x = "User Behavior Class", y = "Battery Drain (mAh/day)")


ggplot(data, aes(x = User.Behavior.Class.Categorical, y = Number.of.Apps.Installed, fill = User.Behavior.Class.Categorical)) +
  geom_violin() +
  labs(title = "Violin Plot of Number of Apps Installed by User Behavior Class", x = "User Behavior Class", y = "Number of Apps Installed")


ggplot(data, aes(x = User.Behavior.Class.Categorical, y = Data.Usage..MB.day., fill = User.Behavior.Class.Categorical)) +
  geom_violin() +
  labs(title = "Violin Plot of Data Usage by User Behavior Class", x = "User Behavior Class", y = "Data Usage (MB/day)")


ggplot(data, aes(x = User.Behavior.Class.Categorical, y = Age, fill = User.Behavior.Class.Categorical)) +
  geom_violin() +
  labs(title = "Violin Plot of Age by User Behavior Class", x = "User Behavior Class", y = "Age")


