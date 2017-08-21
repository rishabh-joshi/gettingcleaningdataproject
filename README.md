# Getting and Cleaning Data Project

This repository contains the final project for the [Getting and Cleaning Data](https://www.coursera.org/learn/data-cleaning/home) course on [Coursera](https://www.coursera.org/) which is a part of the [Johns Hopkins University Data Science Specialization](https://www.coursera.org/specializations/jhu-data-science).

**The goal of this project** is to prepare a tidy dataset from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) that can be used for later analysis. 

The code makes no assumption about the presence of dataset in the working directory. The script will download the [zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) for the dataset from the internet and extract it in the working directory and then proceed to make modifications. The final output will be a file called "tidy_data.txt" which contains the final tidy dataset.

# Environment specifications at the time of development

0. The project only contains one R script called `run_analysis.R`.
1. The R script was created on `R version 3.4.1 (2017-06-30)`.
2. The `dplyr` package is used in the script. The version of the dplyr package at the time of creating the script was 0.7.2. The package will be automatically installed by the script if not present.
3. The R script was created on Windows 10.

# Executing the code

Just run the script `run_analysis.R`

# Output

The script will generate the file `tidy_data.txt` containing the final tidy dataset.

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