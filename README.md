# DataClean
The run_analysis.R script takes the Human Activity Recognition Using Smartphones Data Set and provides a tidy dataset for analysis. The dataset must be downloaded and unzipped into your R working directory. The dataset can be downloaded from the following URL https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The reshape2 package must be installed.

The run_analysis.R script merges the training and the test sets to create one data set. Then it extracts only the measurements on the mean and standard deviation for each measurement and uses descriptive activity names to name the activities in the data set and appropriately labels the data set with descriptive variable names. It finally creates a second, independent tidy data set with the average of each variable for each activity and each subject and outputs the file.

The original dataset included the following data files:
features.txt: List of all features.
activity_labels.txt: List of class labels and their activity name.
train/X_train.txt: Training setdata.
train/y_train.txt: Training labels.
train/subject_train.txt: ID's of subjects in the training data
test/X_test.txt: Test dataset.
test/y_test.txt': Test labels.
test/subject_test.txt: ID's of subjects in the training data

The data in the "Human Activity Recognition Using Smartphones Dataset Version 1.0" have been taken from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz data were captured. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

Source:

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws


 the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
