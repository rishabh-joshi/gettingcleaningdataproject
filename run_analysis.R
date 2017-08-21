# Load and install the required packages
if(!require(dplyr))
    install.packages("dplyr")
library(dplyr)

# Download and unzip the dataset
URL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dest = "getdata_projectfiles_UCI HAR Dataset.zip"
if(!file.exists(dest))
{
    download.file(URL,dest)
    files = unzip(dest)
}

# Read the names of the features from the "features.txt" file
features = read.table(files[2], colClasses = c("numeric","character"), 
                      col.names = c("ft_no","ft_name"))

# Read the activity labels from the "activity_labels.txt" file
activity_labels = read.table(files[1], colClasses = c("numeric","character"), col.names = c("act_no","act_name"))

# CREATE THE TRAINING DATASET
subject_train = read.table(files[26], colClasses = 'numeric')
activity_train = read.table(files[28], colClasses = 'numeric')
train = read.table(files[27], colClasses = 'numeric', col.names = features$ft_name)

# appropriately labels the data set with descriptive variable names
colnames(train) = gsub("\\.+$", "", colnames(train))
colnames(train) = gsub("\\.+", "_", colnames(train))

# extract only the mean and standard deviation for each measurement
required_features = grep("[Mm]ean|std", colnames(train))
train = train[,required_features]

# use descriptive activity names to name the activities in the data set
train$subject = factor(subject_train[,1])
train$activity = activity_train[,1]
train$activity = factor(sapply(train$activity, function(x) activity_labels[x,2]))

# CREATE THE TEST DATASET
subject_test = read.table(files[14], colClasses = 'numeric')
activity_test = read.table(files[16], colClasses = 'numeric')
test = read.table(files[15], colClasses = 'numeric', col.names = features$ft_name)

# appropriately labels the data set with descriptive variable names
colnames(test) = gsub("\\.+$","",colnames(test))
colnames(test) = gsub("\\.+","_",colnames(test))

# extract only the mean and standard deviation for each measurement
test = test[,required_features]

# use descriptive activity names to name the activities in the data set
test$subject = factor(subject_test[,1])
test$activity = activity_test[,1]
test$activity = factor(sapply(test$activity, function(x) activity_labels[x,2]))

# Merging the training and test datasets
merged = rbind(train,test)
    
# create a second, independent tidy data set with the average of each variable 
# for each activity and each subject
# we will use the summarize_all function in dplyr to accomplish this task
tidy = merged %>% 
    group_by(subject, activity) %>%
    summarize_all(mean)

# write the final tidy data into the "tidy_data.txt" file
write.table(tidy, "tidy_data.txt", row.names = FALSE)

