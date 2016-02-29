#load libs
library(dplyr)

#Step 1 - Merges the training and the test sets to create one data set

# get test data. I wanted to use fread from data.table, but made the grep behave wierd. need to look into it later
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/Y_test.txt")

#get train data
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/Y_train.txt")

# get the subjects
subject_test <- read.table("test/subject_test.txt")
subject_train <- read.table("train/subject_train.txt")

# glue together
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

#Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table("features.txt")

#grep out needed indexes
mean_and_std_measurements <- grep("-(mean|std)\\(\\)", features[, 2])

#subset the data
x <- x[, mean_and_std_measurements]

#name the subset
names(x) <- features[mean_and_std_measurements, 2]


#Step 3 - Uses descriptive activity names to name the activities in the data set
activities_labels <- read.table("activity_labels.txt")

# replace correct activity names
y[, 1] <- activities_labels[y[, 1], 2]

# give the column a correct name
names(y) <- "activity"

# Step 4 - Appropriately labels the data set with descriptive variable names.
# naming subject before cbinding it all together
names(subject) <- "subject"

# bring it all together, so we can group on it
phone_data <- cbind(subject, y, x)

#Step 5 -   From the data set in step 4, creates a second, independent tidy data set with the average 
#           of each variable for each activity and each subject.
# dplyr is really good at this. group_by and then do a summary for each column, apart from the grouped ones
tidy_data_set_means <- phone_data %>% group_by( subject, activity) %>% summarise_each(funs(mean))

# Print to file
write.table(tidy_data_set_means, "tidy_data_set_means.txt", row.name=F)
