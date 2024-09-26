## Tidy Data Project - Code Book

This code book details information for the Tidy_Data project, data sources, as well as the variables and transformations used.

---

The raw dataset **Human Activity Recognition Using Smartphones Dataset** can be [downloaded here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
  
This data was originally collected by:  
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. activityrecognition@smartlab.ws www.smartlab.ws

---

## The Original Experiment
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows.  From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

---

## List of Variables Used

- `url` `desfile` `dateDownloaded` `Dataset_unzip`: used to download the original files, hold the unzipped files and record the date downloaded
- `X_train` `y_train` : store the training data and training output
- `X_test` `y_test` : store the test data and test output
- `subject_train` `subject_test`: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.  
- `features`: List of features recorded
- `activity_labels`: Links the class labels with their activity name
- `extracted` `X_train_extracted` `X_test_extracted`: store  information for subset of data related to standard deviation and mean 
- `train_data` `test_data`: stores the combined X_train/ y_train and X_test/y_test data tables respectively 
- `final_data_table`: combines all data tables into one
- `id_labels` `data_labels``melt_data` `tidy_data`: variables used to hold column headers and final file for final merged data  

---

## Note on Data Transformations