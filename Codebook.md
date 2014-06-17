Codebook
===================

## Processing performed on the raw data by the R script ##
In the raw data, there are one training set and one test set. 

The processing:

1. The training and the test sets are merged to create one data set.
2. Only the measurements on the mean and standard deviation for each measurement are included in the output. 
3. Activity labels are used to replace activity IDs, e.g. 1 becomes WALKING
4. The variable names are modified. The characters "()" are removed from the names. The character "-" is replaced with ".", e.g. tBodyAcc-mean()-X becomes tBodyAcc.mean.X.   
5. The data is aggregated by taking the average of each variable for each activity and each subject. 
6. The output is stored in a variable named **tidyData**.

## Data dictionary of the output ##

- subject : the subject, ID
- activity : the activity label

All the following variables are aggregated by taking the average of each variable for each activity and each subject. 

- tBodyAcc.mean.X : the mean of body acceleration in the X direction (time)
- tBodyAcc.mean.Y : the mean of body acceleration in the Y direction (time)
- tBodyAcc.mean.Z : the mean of body acceleration in the Z direction (time)
- tBodyAcc.std.X : the standard deviation of body acceleration in the X direction (time)
- tBodyAcc.std.Y : the standard deviation of body acceleration in the Y direction (time)
- tBodyAcc.std.Z : the standard deviation of body acceleration in the Z direction (time)
- tGravityAcc.mean.X : the mean of gravity acceleration in the X direction (time)
- tGravityAcc.mean.Y : the mean of gravity acceleration in the Y direction (time)
- tGravityAcc.mean.Z : the mean of gravity acceleration in the Z direction (time)
- tGravityAcc.std.X : the standard deviation of gravity acceleration in the X direction (time)
- tGravityAcc.std.Y : the standard deviation of gravity acceleration in the Y direction (time)
- tGravityAcc.std.Z : the standard deviation of gravity acceleration in the Z direction (time)
- tBodyAccJerk.mean.X : the mean of body acceleration jerk in the X direction (time)
- tBodyAccJerk.mean.Y : the mean of body acceleration jerk in the Y direction (time)
- tBodyAccJerk.mean.Z : the mean of body acceleration jerk in the Z direction (time)
- tBodyAccJerk.std.X : the standard deviation of body acceleration jerk in the X direction (time)  
- tBodyAccJerk.std.Y : the standard deviation of body acceleration jerk in the Y direction (time)
- tBodyAccJerk.std.Z : the standard deviation of body acceleration jerk in the Z direction (time)
- tBodyGyro.mean.X : the mean of body gyroscope in the X direction (time)
- tBodyGyro.mean.Y : the mean of body gyroscope in the Y direction (time)
- tBodyGyro.mean.Z : the mean of body gyroscope in the Z direction (time)
- tBodyGyro.std.X : the standard deviation of body gyroscope in the X direction (time)
- tBodyGyro.std.Y : the standard deviation of body gyroscope in the Y direction (time)
- tBodyGyro.std.Z : the standard deviation of body gyroscope in the Z direction (time)
- tBodyGyroJerk.mean.X : the mean of body gyroscope jerk in the X direction (time)
- tBodyGyroJerk.mean.Y : the mean of body gyroscope jerk in the Y direction (time)
- tBodyGyroJerk.mean.Z : the mean of body gyroscope jerk in the Z direction (time)
- tBodyGyroJerk.std.X : the standard deviation of body gyroscope jerk in the X direction (time)
- tBodyGyroJerk.std.Y : the standard deviation of body gyroscope jerk in the Y direction (time)
- tBodyGyroJerk.std.Z : the standard deviation of body gyroscope jerk in the Z direction (time)
- fBodyAcc.mean.X : the mean of body acceleration in the X direction (frequency)
- fBodyAcc.mean.Y : the mean of body acceleration in the Y direction (frequency)
- fBodyAcc.mean.Z : the mean of body acceleration in the Z direction (frequency)
- fBodyAcc.std.X : the standard deviation of body acceleration in the X direction (frequency)
- fBodyAcc.std.Y : the standard deviation of body acceleration in the Y direction (frequency)
- fBodyAcc.std.Z : the standard deviation of body acceleration in the Z direction (frequency)
- fBodyAccJerk.mean.X : the mean of body acceleration jerk in the X direction (frequency)
- fBodyAccJerk.mean.Y : the mean of body acceleration jerk in the Y direction (frequency)
- fBodyAccJerk.mean.Z : the mean of body acceleration jerk in the Z direction (frequency)
- fBodyAccJerk.std.X : the standard deviation of body acceleration jerk in the X direction (frequency)
- fBodyAccJerk.std.Y : the standard deviation of body acceleration jerk in the Y direction (frequency)
- fBodyAccJerk.std.Z : the standard deviation of body acceleration jerk in the Z direction (frequency)
- fBodyGyro.mean.X : the mean of body gyroscope in the X direction (frequency)
- fBodyGyro.mean.Y : the mean of body gyroscope in the Y direction (frequency)
- fBodyGyro.mean.Z : the mean of body gyroscope in the Z direction (frequency)
- fBodyGyro.std.X : the standard deviation of body gyroscope in the X direction (frequency)
- fBodyGyro.std.Y : the standard deviation of body gyroscope in the Y direction (frequency)
- fBodyGyro.std.Z : the standard deviation of body gyroscope in the Z direction (frequency)
