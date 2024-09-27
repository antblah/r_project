# Tidy Data Project

This is the project repository for the "Tidy Data Project" as part of the Getting and Cleaning Data course created by Jeff Leek, Roger Peng, and Brian Caffo from the Johns Hopkins University. 

The course follows principals discussed in the paper ["Tidy Data" by Hadley Wickman](https://vita.had.co.nz/papers/tidy-data.pdf).

---
# Intro

The purpose of the "Tidy Data Project" is to demonstrate one's ability to collect, work with, and clean a data set. More specifically, we retreive sensor data and process it for so that it can be used for later analysis.

This project aims to create one R script called <b><u>run_analysis.R</u></b> which:  

* Merges the training and the test sets to create one data set;

* Extracts only the measurements on the mean and standard deviation for each measurement; 

* Uses descriptive activity names to name the activities in the data set;

* Appropriately labels the data set with descriptive variable names; 

* From the data set in the previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject;
---
## Files Included
1. <b><u>run_analysis.R</u></b> - Code base for the project

2. <b><u>CodeBook.md</u></b> - Details information about the variables and transformations used throughout the project

3. <b><u>README.md</u></b> - Details general information about the project

---
## How to Run the Script
1. Download from **Human Activity Recognition Using Smartphones Dataset**.  Files can  can be [downloaded here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

2.  Unzip all files into a path

3.  Use <b>R</b> or <b>RStudio</b> to <b><u>run_analysis.R</u></b> script. The script will generate the final <b><u>tidy_data.txt</u></b> data set.
