# Getting and Cleaning Data Project

This repository contains the final project for the [Getting and Cleaning Data](https://www.coursera.org/learn/data-cleaning/home) course on [Coursera](https://www.coursera.org/) which is a part of the [Johns Hopkins University Data Science Specialization](https://www.coursera.org/specializations/jhu-data-science).

The goal of this project is to prepare a tidy dataset from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) that can be used for later analysis. 

**The file CodeBook.md contains complete information on how the `run_analysis.R` script works.**

The code makes no assumption about the presence of dataset in the working directory. The script will download the [zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) for the dataset from the internet and extract it in the working directory and then proceed to make modifications. The final output will be a file called "tidy_data.txt" which contains the final tidy dataset.

# Environment specifications at the time of development

0. The project only contains one R script called `run_analysis.R`.
1. The R script was created on R version 3.4.1 (2017-06-30)
2. The dplyr package is used in the script. The version of the dplyr package at the time of creating the script was 0.7.2. The package will be automatically installed by the script if not present.
3. The R script was created on Windows 10.

# Executing the code

Just run the script `run_analysis.R`

# Output

The script will generate the file "tidy_data.txt" containing the final tidy dataset.