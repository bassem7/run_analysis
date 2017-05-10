library(dplyr)
library(tidyr)

# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# You should create one R script called run_analysis.R that does the following.
# 1) Merges the training and the test sets to create one data set. 
#setwd("~/Desktop/DataAnalysisMOOC/Course3 Tidydata/Week4/UCI HAR Dataset")

a <- read.table("train/subject_train.txt")
b <- read.table("train/y_train.txt")
c <- read.table("train/X_train.txt")

d <- read.table("test/subject_test.txt")
e <- read.table("test/y_test.txt")
f <- read.table("test/X_test.txt")


View(a)
View(b)
View(c)
View(d)
View(e)
View(f)

dt1 <- data.frame(tort= "train",subjects= a, act_label=b, data=c)
dt2 <- data.frame(tort= "test", subjects= d, act_label=e, data=f)

View(dt1)
View(dt2)

dt3<- rbind(dt1,dt2)
View(dt3)


# 4) Appropriately labels the data set with descriptive variable names.
g <- read.table("features.txt")
View(g)
colnames(dt3)<- c("tort", "subjects", "activitylabel",as.character(g[,2]))

# 2) Extracts only the measurements on the mean and standard deviation for each measurement.
mx <- append(grep("mean()",colnames(dt3)), grep("std()",colnames(dt3)))
mx<- sort(mx)
colnames(dt3)[mx]
dt4<- dt3[,c(1,2,3,mx)]
str(dt4)

# 3) Uses descriptive activity names to name the activities in the data set
#1 WALKING
#2 WALKING_UPSTAIRS
#3 WALKING_DOWNSTAIRS
#4 SITTING
#5 STANDING
#6 LAYING
dt4[,3]<- factor(dt4[,3], 
                 levels = c(1,2,3,4,5,6), 
                 labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))

dt4<-select(dt4,-tort)

# 5) From the data set in step 4, creates a second, independent tidy data set with the average 
#          of each variable for each activity and each subject.
dt5<- summarise_all(group_by(dt4, activitylabel,subjects),  mean, na.rm=TRUE)
View(dt5)
write.table(dt5,"tidydata.txt", row.name=FALSE) 
