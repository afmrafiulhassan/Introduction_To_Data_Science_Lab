library(dplyr)

data <- read.csv("D:/9th Semester (Fall_24-25)/IDS Lab/Project/Final_Project/user_behavior_dataset.csv", header = TRUE, sep = ',')

print(data)

no_of_col <- ncol(data)
no_of_row <- nrow(data)
cat("No of rows in the dataset: ", no_of_row, "\n")
cat("No of columns in the dataset: ", no_of_col, "\n")


str(data)




#####################################Pearson's Method################################################



#pearsons for age

pearson_age <- cor.test(data$Age, data$User.Behavior.Class, method = "pearson")
cat("Pearson correlation for Age (r): ", pearson_age$estimate, "\n")
cat("p-value for Age: ", pearson_age$p.value, "\n")



#pearsons for data_usage

pearson_data_usage <- cor.test(data$Data.Usage..MB.day., data$User.Behavior.Class, method = "pearson")
cat("Pearson correlation for Data Usage (r): ", pearson_data_usage$estimate, "\n")
cat("p-value for Data Usage: ", pearson_data_usage$p.value, "\n")



#pearsons for number of app installed.

pearson_apps_installed <- cor.test(data$Number.of.Apps.Installed, data$User.Behavior.Class, method = "pearson")
cat("Pearson correlation for Number of Apps Installed (r): ", pearson_apps_installed$estimate, "\n")
cat("p-value for Number of Apps Installed: ", pearson_apps_installed$p.value, "\n")


#pearsons for battery drain.

pearson_battery_drain <- cor.test(data$Battery.Drain..mAh.day., data$User.Behavior.Class, method = "pearson")
cat("Pearson correlation for Battery Drain (r): ", pearson_battery_drain$estimate, "\n")
cat("p-value for Battery Drain: ", pearson_battery_drain$p.value, "\n")



#pearsons for screen on time.

pearson_screen_on <- cor.test(data$Screen.On.Time..hours., data$User.Behavior.Class, method = "pearson")
cat("Pearson correlation for Screen On Time (r): ", pearson_screen_on$estimate, "\n")
cat("p-value for Screen On Time: ", pearson_screen_on$p.value, "\n")



#pearsons for app usage time.

pearson_app_usage <- cor.test(data$App.Usage.Time..min.day., data$User.Behavior.Class, method = "pearson")
cat("Pearson correlation for App Usage Time (r): ", pearson_app_usage$estimate, "\n")
cat("p-value for App Usage Time: ", pearson_app_usage$p.value, "\n")





####################################Spearman's Method################################################




#Spearman's for age.

spearman_age <- cor.test(data$Age, data$User.Behavior.Class, method = "spearman")
cat("Spearman correlation for Age (r): ", spearman_age$estimate, "\n")
cat("p-value for Age: ", spearman_age$p.value, "\n")



#Spearman's for data usage.

spearman_data_usage <- cor.test(data$Data.Usage..MB.day., data$User.Behavior.Class, method = "spearman")
cat("Spearman correlation for Data Usage (r): ", spearman_data_usage$estimate, "\n")
cat("p-value for Data Usage: ", spearman_data_usage$p.value, "\n")




#Spearman's for number of app installed.

spearman_apps_installed <- cor.test(data$Number.of.Apps.Installed, data$User.Behavior.Class, method = "spearman")
cat("Spearman correlation for Number of Apps Installed (r): ", spearman_apps_installed$estimate, "\n")
cat("p-value for Number of Apps Installed: ", spearman_apps_installed$p.value, "\n")


#Spearman's for battery drain.

spearman_battery_drain <- cor.test(data$Battery.Drain..mAh.day., data$User.Behavior.Class, method = "spearman")
cat("Spearman correlation for Battery Drain (r): ", spearman_battery_drain$estimate, "\n")
cat("p-value for Battery Drain: ", spearman_battery_drain$p.value, "\n")


#Spearman's for screen on time.

spearman_screen_on <- cor.test(data$Screen.On.Time..hours., data$User.Behavior.Class, method = "spearman")
cat("Spearman correlation for Screen On Time (r): ", spearman_screen_on$estimate, "\n")
cat("p-value for Screen On Time: ", spearman_screen_on$p.value, "\n")

#Spearman's for app usage time.

spearman_app_usage <- cor.test(data$App.Usage.Time..min.day., data$User.Behavior.Class, method = "spearman")
cat("Spearman correlation for App Usage Time (r): ", spearman_app_usage$estimate, "\n")
cat("p-value for App Usage Time: ", spearman_app_usage$p.value, "\n")








######################################ANOVA Method################################################




#Anova for Device Model.

data$Device.Model <- as.factor(data$Device.Model)

anova_device_model <- aov(User.Behavior.Class ~ Device.Model, data = data)
summary(anova_device_model)


#Anova for Operating System.

data$Operating.System <- as.factor(data$Operating.System)

anova_operating_system <- aov(User.Behavior.Class ~ Operating.System, data = data)
summary(anova_operating_system)


#Anova for Gender.

data$Gender <- as.factor(data$Gender)

anova_gender <- aov(User.Behavior.Class ~ Gender, data = data)
summary(anova_gender)