# This script performs the following processing on the data collected from the accelerometers 
# from the Samsung Galaxy S smartphone.
#
# Here is the data: 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#
# Pre-processing: Before running this script, you have to download the data and unzip it
# in the working directory
#
# Processing:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for 
#    each activity and each subject. 
#

# Read the feature names of the data
f <- read.table("./UCI HAR Dataset/features.txt")
names(f) <- c("id", "feature")
# Remove the characters "()" from the feature names
f$feature <- gsub("\\(\\)", "", f$feature)

# The training set has three files: subject_train.txt, X_train.txt and Y_train.txt

# Read the traing files from ./UCI HAR Dataset/train
strain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./UCI HAR Dataset/train/Y_train.txt")

# Appropriately labels the data set with descriptive variable names. 
names(strain) <- c("subject")
names(xtrain) <- make.names(f$feature)
names(ytrain) <- c("activity.id")

# The test set has three files: subject_test.txt, X_test.txt and Y_test.txt

# Read the test files from ./UCI HAR Dataset/test
stest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt")

# Appropriately labels the data set with descriptive variable names. 
names(stest) <- c("subject")
names(xtest) <- make.names(f$feature)
names(ytest) <- c("activity.id")

# Read activity labels
alabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
names(alabels) <- c("activity.id", "activity")

# Uses descriptive activity names to name the activities in the data set
ytrain2 <- merge(ytrain, alabels, by.x = "activity.id", by.y = "activity.id")
ytrain3 <- data.frame(ytrain2[, c("activity")])
names(ytrain3) <- c("activity")
ytest2 <- merge(ytest, alabels, by.x = "activity.id", by.y = "activity.id")
ytest3 <- data.frame(ytest2[, c("activity")])
names(ytest3) <- c("activity")

# Extracts only the measurements on the mean and standard deviation for each measurement. 
xtrain2 <- xtrain[, grepl('\\.mean\\.|\\.std\\.', names(xtrain))]
xtest2 <- xtest[, grepl('\\.mean\\.|\\.std\\.', names(xtest))]

# Merge the training set
train <- cbind(strain, ytrain3, xtrain2)

# Merge the test set
test <- cbind(stest, ytest3, xtest2)

# Merges the training and the test sets to create one data set.
data <- rbind(train, test)

# Calculates the average of each variable for each activity and each subject.
tidyData <- aggregate(data[, !grepl('subject|activity', names(data))], by=data[, c("subject", "activity")], FUN=mean, na.rm=TRUE)

# Write the tidy data to file
# write.table(tidyData, file="./tidyData.txt", row.names=FALSE)
