# Tidy Data Project

This is the project repository for the "Tidy Data Project" as part of the Getting and Cleaning Data course created by Jeff Leek, Roger Peng, and Brian Caffo from the Johns Hopkins University. 

The course follows principals discussed in the paper ["Tidy Data" by Hadley Wickman](https://vita.had.co.nz/papers/tidy-data.pdf).

---
## Intro

The purpose of the "Tidy Data Project" is to demonstrate one's ability to collect, work with, and clean a data set. More specifically, we retreive sensor data and process it for so that it can be used for later analysis.

This project aims to create one R script called <b><u>run_analysis.R</u></b> which:  

* Merges the training and the test sets to create one data set;

* Extracts only the measurements on the mean and standard deviation for each measurement; 

* Uses descriptive activity names to name the activities in the data set;

* Appropriately labels the data set with descriptive variable names; 

* From the data set in the previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
---
## Files Included in this Project
1. <b><u>run_analysis.R</u></b> - Code base for the project;

2. <b><u>CodeBook.md</u></b> - Details information about the variables and transformations used throughout the project;

3. <b><u>README.md</u></b> - Details general information about the project.

---

## Additional Files upon Download
The original dataset **Human Activity Recognition Using Smartphones Dataset** is [located here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

This script will download, unzip and store the original dataset in your current working directory under path <b><u>./data/UCI HAR Dataset.</b></u>

Once the file is downloaded and unziped, you will find the following additional files:

1. <b><u>activity_labels.txt</u></b> - Links the class labels with their activity name.;

2. <b><u>features_info.txt</u></b> - Shows information about the variables used on the feature vector;

3. <b><u>features.txt</u></b> - List of all features;

4. <b><u>README.txt</u></b> - README text from the original experiment;

5. <b><u>train</u></b> - Training set where X_train and y_train are located;

6. <b><u>test</u></b> - Test set where X_test and y_test are located;

7. <b><u>tidy_data.txt</u></b> - The final output for this project;

## How to Run the Script

Use <b>R</b> or <b>RStudio</b> to <b><u>run_analysis.R</u></b> script. Click the `Source` button at the top right of the script editor, or use the keyboard shortcut `Ctrl+Shift+Enter` (Windows/Linux) or `Cmd+Shift+Enter` (Mac). This will run the script from top to bottom in the Console.The script will generate the final <b><u>tidy_data.txt</u></b> data set.
