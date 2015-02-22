#load dplyr package
library(dplyr)

#download the file from Coursera and unzip it to working directoty 
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "file.zip", "curl")
unzip("file.zip")

#read files from test directory
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

#read files from train directory
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

#rename columns in activity table and in subject table
names(y_test)[1] <- "activity"
names(subject_test)[1] <- "subject"
names(y_train)[1] <- "activity"
names(subject_train)[1] <- "subject"

#read file with feature names
features <- read.table("UCI HAR Dataset/features.txt")
featuresnames <- features[, 2]

#rename features with names which legal for R. 
#Actually make.names() function replaces "-" and "()" (which is illegal in R for column names) in column names with dots "."
featuresnames <- make.names(featuresnames)

#replace "BodyBody" with "Body" in a bunch of column names, so the names will match features_info.txt
featuresnames <- gsub("BodyBody", "Body", featuresnames)

#apply column names to test data  and train data
colnames(X_test) <- featuresnames
colnames(X_train) <- featuresnames

#merge two data set in one
data <- rbind(X_test, X_train)
#get columns with "mean" and "std" (standart deviation) and create new dataset only with them
std <- data[,grepl("std", colnames(data))]
mean <- data[,grepl("mean", colnames(data))]
data <- cbind(mean, std)

#combine activity vector, then combine subject vector
activity <- c(y_test$activity, y_train$activity)
subject <- c(subject_test$subject, subject_train$subject)

#make labels for activity
activity <- sub("1", "Walking", activity)
activity <- sub("2", "Walking Upstairs", activity)
activity <- sub("3", "Walking Downstairs", activity)
activity <- sub("4", "Sitting", activity)
activity <- sub("5", "Standing", activity)
activity <- sub("6", "Laying", activity)

#add activity vector as column to dataset, then add subject vector to dataset
data <- cbind(activity = activity, data)
data <- cbind(subject = subject, data)

#sort dataset by subject and activity with dplyr 
by_sub_act <- group_by(data, subject, activity)

#create final data set by take the average of each variable for each activity and each subject
data <- by_sub_act %>% summarise_each(funs(mean))
