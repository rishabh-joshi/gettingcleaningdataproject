# Getting and Cleaning Data Project

This repository contains the final project for the [Getting and Cleaning Data](https://www.coursera.org/learn/data-cleaning/home) course on [Coursera](https://www.coursera.org/) which is a part of the [Johns Hopkins University Data Science Specialization](https://www.coursera.org/specializations/jhu-data-science).

## Introduction

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. The dataset used in this project is the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) which can be downloaded from [here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Objective 

The goal of this project is to prepare a tidy dataset from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) that can be used for later analysis.

## Explanation of the code

The `run_analysis.R` file contains the code to create the tidy dataset. It will perform the following tasks in order:

1. Load and install the dplyr package.
2. Download and unzip the dataset.
3. Read the names of the features from the `features.txt` file.
4. Read the activity labels from the `activity_labels.txt` file
5. Create the training dataset by:
	- Reading the `subject_train.txt`, `y_train.txt`, and `X_train.txt` files.
	- Appropriately labeling the data set with descriptive variable names using regular expressions.
	- Extracting only the mean and standard deviation for each measurement using regular expressions.
	- Using descriptive activity names (from `activity_labels.txt`) to name the activities in the data set.
6. Create the test dataset in the same way as the training dataset.
7. Merge the training and test datasets.
8. Create a second, independent tidy data set with the average of each variable for each activity and each subject by using the summarize_all function in dplyr.
9. Write the final tidy data into the `tidy_data.txt` file.

## Description of the tidy data

The file `tidy_data.txt` contains the tidy dataset. This dataset has dimensions 180 x 88. There are 30 subjects and 6 activities for each subject, hence the 180 rows, one for each activity performed by each subject. The column names are listed below:

The following variables identify the subjects and the activity.

- `subject` - Subject ID from 1 - 30 denoting to identify the subjects.                           
- `activity` - One of LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS

The following variables denote information collected by the accelerometer.                         
- `tBodyAcc_mean_X`                    
- `tBodyAcc_mean_Y`                    
- `tBodyAcc_mean_Z`                    
- `tBodyAcc_std_X`                     
- `tBodyAcc_std_Y`                     
- `tBodyAcc_std_Z`                     
- `tGravityAcc_mean_X`                 
- `tGravityAcc_mean_Y`                 
- `tGravityAcc_mean_Z`                 
- `tGravityAcc_std_X`                  
- `tGravityAcc_std_Y`                  
- `tGravityAcc_std_Z`                  
- `tBodyAccJerk_mean_X`                
- `tBodyAccJerk_mean_Y`                
- `tBodyAccJerk_mean_Z`                
- `tBodyAccJerk_std_X`                 
- `tBodyAccJerk_std_Y`                 
- `tBodyAccJerk_std_Z`                 
- `tBodyGyro_mean_X`                   
- `tBodyGyro_mean_Y`                   
- `tBodyGyro_mean_Z`                   
- `tBodyGyro_std_X`                    
- `tBodyGyro_std_Y`                    
- `tBodyGyro_std_Z`                    
- `tBodyGyroJerk_mean_X`               
- `tBodyGyroJerk_mean_Y`               
- `tBodyGyroJerk_mean_Z`               
- `tBodyGyroJerk_std_X`                
- `tBodyGyroJerk_std_Y`                
- `tBodyGyroJerk_std_Z`                
- `tBodyAccMag_mean`                   
- `tBodyAccMag_std`                    
- `tGravityAccMag_mean`                
- `tGravityAccMag_std`                 
- `tBodyAccJerkMag_mean`               
- `tBodyAccJerkMag_std`                
- `tBodyGyroMag_mean`                  
- `tBodyGyroMag_std`                   
- `tBodyGyroJerkMag_mean`              
- `tBodyGyroJerkMag_std`               
- `fBodyAcc_mean_X`                    
- `fBodyAcc_mean_Y`                    
- `fBodyAcc_mean_Z`                    
- `fBodyAcc_std_X`                     
- `fBodyAcc_std_Y`                     
- `fBodyAcc_std_Z`                     
- `fBodyAcc_meanFreq_X`                
- `fBodyAcc_meanFreq_Y`                
- `fBodyAcc_meanFreq_Z`                
- `fBodyAccJerk_mean_X`                
- `fBodyAccJerk_mean_Y`                
- `fBodyAccJerk_mean_Z`                
- `fBodyAccJerk_std_X`                 
- `fBodyAccJerk_std_Y`                 
- `fBodyAccJerk_std_Z`                 
- `fBodyAccJerk_meanFreq_X`            
- `fBodyAccJerk_meanFreq_Y`            
- `fBodyAccJerk_meanFreq_Z`            
- `fBodyGyro_mean_X`                   
- `fBodyGyro_mean_Y`                   
- `fBodyGyro_mean_Z`                   
- `fBodyGyro_std_X`                    
- `fBodyGyro_std_Y`                    
- `fBodyGyro_std_Z`                    
- `fBodyGyro_meanFreq_X`               
- `fBodyGyro_meanFreq_Y`               
- `fBodyGyro_meanFreq_Z`               
- `fBodyAccMag_mean`                   
- `fBodyAccMag_std`                    
- `fBodyAccMag_meanFreq`               
- `fBodyBodyAccJerkMag_mean`           
- `fBodyBodyAccJerkMag_std`            
- `fBodyBodyAccJerkMag_meanFreq`       
- `fBodyBodyGyroMag_mean`              
- `fBodyBodyGyroMag_std`               
- `fBodyBodyGyroMag_meanFreq`          
- `fBodyBodyGyroJerkMag_mean`          
- `fBodyBodyGyroJerkMag_std`           
- `fBodyBodyGyroJerkMag_meanFreq`      
- `angle_tBodyAccMean_gravity`         
- `angle_tBodyAccJerkMean_gravityMean` 
- `angle_tBodyGyroMean_gravityMean`    
- `angle_tBodyGyroJerkMean_gravityMean`
- `angle_X_gravityMean`                
- `angle_Y_gravityMean`                
- `angle_Z_gravityMean`