# Getting and Cleaning Data Course Project

This project involved cleaning activity data collected from 30 subjects. Data for this project was download from the [UCI Data Repo] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). More details about the data can be read [here] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The tasks completed as part of this project are as follows,

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names.
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

All the 5 steps mentioned above are achieved in the run_analusis.R script. It can be noted in the script that I first changed all variable names to ones that can be easily understood and accessed (even though only a few of them are required). The subject id's, features and activity labels were in separate text files. These are combined, both for train and test data. Subsequently, only data pertaining to mean and std of the variables are extracted. Using the extracted data, a new tidy dataset is created in tidy_dataset.txt.  
