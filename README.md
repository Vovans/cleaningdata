# Course project "Getting and cleaning data"
## What you need to know about how script works

###1. What we should do? 
#####We should to take a Samsung data (test and train dataset), combine them, get columns of mean and standard deviation variables, and create a tidy dataset with the average of each variable for each activity and each subject.

###2. How I did it
#####2.1 I download a zip file from Coursera. 
#####2.2 Unzip it to working directory. So I have "UCI HAR Dataset" folder in my working directory. 
#####2.3 Read files "X_test.txt" (Test set), "y_test.txt"(Test labels), "subject_test.txt" (persons, who take part in experiment) from test directory
#####2.4 Read the same files from train directory. 
#####2.5 Rename columns in activity tables (one column tables from y_test.txt and y_train.txt) and in subject tables (one column table from subject_test.txt and subject_train.txt). Name columns "activity" and "subject".
#####2.6 Read file ("UCI HAR Dataset/features.txt") with feature names. Rename features with names which legal for R. I use make.names() function that replaces "-" and "()" (which is illegal in R for column names) with dots "." (which is good for R). After that I replace "BodyBody" with "Body" in a bunch of column names, so the names will match features_info.txt
#####2.7 Apply column names (from previous step) to X_test (which is read from X_test.txt) and X_train (the same way) and combine two datasets in one.
#####2.8 Create a smaller dataset with columns which have "mean" and "std" in names. 
#####2.9 Combine activity vector (y_test and y_train), then combine subject vector (subject_test and subject_train)
#####2.10 Make labels for activity. Actually replace "1" in activity vector with "Walking", "2" with "Walking Upstairs" etc. Activity labels I get from activity_labels.txt
#####2.11 Add activity vector as column to dataset, then add subject vector to dataset.
#####2.12 Now I should follow step five in course project assignment - creates a second, independent tidy data set with the average of each variable for each activity and each subject. So I use dplyr package. I sort dataset by subject and activity and then create final data set by take the average of each variable for each activity and each subject.

###3. What form of data is the final file

#####It's wide-form of tidy-data. 

###4. How to read final file into R
##### Please, put file to your working directory and use the following command read.table("filename.txt", header = TRUE)
