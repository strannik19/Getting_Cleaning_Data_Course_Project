# Code Book


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.


### List of columns in tidy_data_set_means.txt

* subject -- int
* activity -- Factor with 6 levels: "LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"
* tBodyAcc-mean()-X -- Number
* tBodyAcc-mean()-Y -- Number
* tBodyAcc-mean()-Z -- Number
* tBodyAcc-std()-X -- Number
* tBodyAcc-std()-Y -- Number
* tBodyAcc-std()-Z -- Number
* tGravityAcc-mean()-X -- Number
* tGravityAcc-mean()-Y -- Number
* tGravityAcc-mean()-Z -- Number
* tGravityAcc-std()-X -- Number
* tGravityAcc-std()-Y -- Number
* tGravityAcc-std()-Z -- Number
* tBodyAccJerk-mean()-X -- Number
* tBodyAccJerk-mean()-Y -- Number
* tBodyAccJerk-mean()-Z -- Number
* tBodyAccJerk-std()-X -- Number
* tBodyAccJerk-std()-Y -- Number
* tBodyAccJerk-std()-Z -- Number
* tBodyGyro-mean()-X -- Number
* tBodyGyro-mean()-Y -- Number
* tBodyGyro-mean()-Z -- Number
* tBodyGyro-std()-X -- Number
* tBodyGyro-std()-Y -- Number
* tBodyGyro-std()-Z -- Number
* tBodyGyroJerk-mean()-X -- Number
* tBodyGyroJerk-mean()-Y -- Number
* tBodyGyroJerk-mean()-Z -- Number
* tBodyGyroJerk-std()-X -- Number
* tBodyGyroJerk-std()-Y -- Number
* tBodyGyroJerk-std()-Z -- Number
* tBodyAccMag-mean() -- Number
* tBodyAccMag-std() -- Number
* tGravityAccMag-mean() -- Number
* tGravityAccMag-std() -- Number
* tBodyAccJerkMag-mean() -- Number
* tBodyAccJerkMag-std() -- Number
* tBodyGyroMag-mean() -- Number
* tBodyGyroMag-std() -- Number
* tBodyGyroJerkMag-mean() -- Number
* tBodyGyroJerkMag-std() -- Number
* fBodyAcc-mean()-X -- Number
* fBodyAcc-mean()-Y -- Number
* fBodyAcc-mean()-Z -- Number
* fBodyAcc-std()-X -- Number
* fBodyAcc-std()-Y -- Number
* fBodyAcc-std()-Z -- Number
* fBodyAccJerk-mean()-X -- Number
* fBodyAccJerk-mean()-Y -- Number
* fBodyAccJerk-mean()-Z -- Number
* fBodyAccJerk-std()-X -- Number
* fBodyAccJerk-std()-Y -- Number
* fBodyAccJerk-std()-Z -- Number
* fBodyGyro-mean()-X -- Number
* fBodyGyro-mean()-Y -- Number
* fBodyGyro-mean()-Z -- Number
* fBodyGyro-std()-X -- Number
* fBodyGyro-std()-Y -- Number
* fBodyGyro-std()-Z -- Number
* fBodyAccMag-mean() -- Number
* fBodyAccMag-std() -- Number
* fBodyBodyAccJerkMag-mean() -- Number
* fBodyBodyAccJerkMag-std() -- Number
* fBodyBodyGyroMag-mean() -- Number
* fBodyBodyGyroMag-std() -- Number
* fBodyBodyGyroJerkMag-mean() -- Number
* fBodyBodyGyroJerkMag-std() -- Number

### Data used

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Steps performed on the data

1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names.
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.