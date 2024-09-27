# Import necessary packages
library(dplyr)
library(data.table)

# Save the original working directory
original_wd <- getwd()


# Create directory "data" if directory does not already exist
if (!dir.exists("data")) {
  dir.create("data")
}


# Set "data" directory as current working directory
setwd(file.path(original_wd, "data"))


# Load url and download attached file
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile <- "Dataset.zip"
download.file(url, destfile)


# Record date of download for reference
dateDownloaded <- Sys.Date()
print(paste("Data downloaded on:", dateDownloaded))


# Unzip downloaded dataset
Dataset_unzip <- unzip("Dataset.zip")


# Set "UCI... " as the working directory
setwd(file.path(original_wd, "data", "UCI HAR Dataset"))
list.files()


# Load Training Data
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")


# Load Subject Train Data (Details which of the 30 subjects performed the activity)
subject_train <- read.table("train/subject_train.txt")


# Load Testing Data
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")


# Load Subject Test Data (Details which of the 30 subjects performed the activity)
subject_test <- read.table("test/subject_test.txt")


# Load 2nd column from Features data 
features <- read.table("features.txt")[,2]


# Load 2nd column from Activity data
activity_labels <- read.table("activity_labels.txt")[,2]


# Rename the columns of the training and test data 
# to match the names from Features
names(X_train) = features
names(X_test) = features


# Select all features related to standard deviation or mean
extracted <- grepl("std|mean", features)


# Create X_train and X_test data sets with only extracted features
# of std or mean 
X_train_extracted <- X_train[,extracted]
X_test_extracted <- X_test[,extracted]


# Relabel each y_train and y_test observation with the appropriate
# activity labels for easier reading
y_train[,2] = activity_labels[y_train[,1]]
y_test[,2] = activity_labels[y_test[,1]]


# Rename y_train and y_test columns for easier reading 
names(y_train) = c("Activity_ID", "Activity_Label")
names(y_test) = c("Activity_ID", "Activity_Label")


# Rename subject_train and subject_test column for easier reading
names(subject_train) = "subject"
names(subject_test) = "subject"


# Bind X_train to y_train along subject_train field
train_data <- cbind(as.data.table(subject_train), y_train, X_train)


# Bind X_test to y_test along subject_train field
test_data <- cbind(as.data.table(subject_test), y_test, X_test)


# Merge train_data and test_data
final_data_table <- rbind(train_data, test_data)

# Create a vector id_label which will used to created column 
# names in the final merged dataset  
id_labels   <- c("subject", "Activity_ID", "Activity_Label")


# Create a vector data_labels with the columns from the merged dataset 
# excluding those column names in id_lables  
data_labels <- setdiff(colnames(final_data_table), id_labels)


# Reshape the data into a long format with id_labels as identifier columns,
# and the remaining variables placed in associated rows.
melt_data   <- reshape2::melt(final_data_table, id.vars = id_labels, measure.vars = data_labels)


# Create new data set tidy_data which calculates mean of each variable 
# for each activity and subject
tidy_data   <- reshape2::dcast(melt_data, subject + Activity_Label ~ variable, fun.aggregate = mean)


# Write out tidy_data to a new file
write.table(tidy_data, file = "./tidy_data.txt")
