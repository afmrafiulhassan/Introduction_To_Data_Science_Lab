install.packages("dplyr")
library(dplyr)



# Filter Mehtod
#filter(dataframeName,col1,...,<>method)


stats <- data.frame(player=c('A','B','C','D'),
                    runs=c(100,200,408,19),
                    wickets=c(17,20,NA,5))

filter(stats,runs>100)






# Distint Method
#distinct(dataframeName,col1,col2,...., .keep_all=TRUE)
#remove duplicate based on column


stats <- data.frame(player=c('A','B','C','D','A','A'),
                    runs=c(100,200,408,19,56,100),
                    wickets=c(17,20,NA,5,2,17))

distinct(stats)
distinct(stats,player, .keep_all=TRUE)






# Arrange method
#arrange(dataframeName,columnName)

arrange(stats,wickets)





# Select Method
#select(dataframeName, col1,col2,....)


select(stats,player,wickets)




# Rename Method
#rename(dataframeName, newName=oldName)

rename(stats,run_score=runs)




# Mutate & Transmute Methods
#mutate(datframeName, newVariable=formula)
#transmute(dataframeName, newVariable=formula)


mutate(stats, avg=runs/4)
transmute(stats, avg=runs/4)


# Summarize Method
#summarize(dataframeName,aggregate_function(columnName))

summarize(stats,sum(runs))


