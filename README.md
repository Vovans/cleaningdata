# Course project "Getting and cleaning data"
## What you need to know about how script works

###1. What we should do? 
We should to take a Samsung data (test and train dataset), combine them, get columns of mean and standard deviation variables, and create a tidy dataset with the average of each variable for each activity and each subject.

###2. How I did it
      2.1 I download a zip file from Coursera. 
      2.2 Unzip it to working directory. So I have "UCI HAR Dataset" folder in my working directory. 
      2.3 Read files "X_test.txt" (Test set), "y_test.txt"(Test labels), "subject_test.txt" (persons, who take part in experiment) from test directory
      2.4 Read the same files from train directory. 
      2.5 Rename columns in activity tables (one column tables from y_test.txt and y_train.txt) and in subject tables (one column table from subject_test.txt and subject_train.txt). Name columns "activity" and "subject".
      2.6 Read file ("UCI HAR Dataset/features.txt") with feature names. Rename features with names which legal for R. I use make.names() function that replaces "-" and "()" (which is illegal in R for column names) with dots "." (which is good for R). After that I replace "BodyBody" in a bunch of column names, so the names will match features_info.txt
      2.7 

