Getting and Cleaning Data Course Project
===================

This repository contains the following files:

- **README.md** : A readme file
- **run_analysis.R** : A R script for performing data processing on the data collected from the accelerometers from the Samsung Galaxy S smartphone
- **Codebook.md** : A description of the processing performed on the raw data and the variables of the output

## To run the R script: ##

Before running the R script, you have to download the raw data and unzip it in the working directory.

Here is the raw data:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Then, you may run the R script, **run_analysis.R**. 

The R script will read in the training set and test set from the raw data and perform the following processing on the raw data.

1. The training and the test sets are merged to create one data set.
2. Only the measurements on the mean and standard deviation for each measurement are included in the output. 
3. Activity labels are used to replace activity IDs, e.g. 1 becomes WALKING
4. The variable names are modified. The characters "()" are removed from the names. The character "-" is replaced with ".", e.g. tBodyAcc-mean()-X becomes tBodyAcc.mean.X.   
5. The data is aggregated by taking the average of each variable for each activity and each subject. 

The output is stored in a variable named **tidyData**.

Please refer to the Codebook.md for further details on the processing and the output.



 




 



