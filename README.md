# Getting_Cleaning_Data_Course_Project

Repository contains file for Getting and Cleaning Data Course Project. The goal is to prepare tidy data that can be used for later analysis. cointains:

1. run_analysis.R - script to prepare tidy data set: tidy_data_set_means.txt
1. CodeBook.md - describes tidy_data_set_means.txt
1. tidy_data_set_means.txt - the tidy dataset itself


### Required Packages
dplyr

### Execution steps
1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names.
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

####Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Contents should be unziped into R working directory before you execute run_analysis.R


####Original Data set:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones