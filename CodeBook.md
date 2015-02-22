Data source

This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

I refer you to the README and features.txt files in the original dataset to learn more about the feature selection for this dataset. And there you will find the follow description:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a
median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

The reasoning behind my selection of features is that the assignment explicitly states "Extracts only the measurements on the mean and standard deviation for each measurement." To be complete, I included all variables having to do with mean or standard deviation.

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws


The following steps were applied:

Read activities and label the aproppriate columns 

Read features and lable columns

Read test data and label columns

Read training data and label columns

Read ids of test subjects and label columns

Read activity_id of test data and label columns

Read ids of test subjects and label columns

Read activity_id of training data and label columns

Combine test subject_id, test activity_id and test data into one dataset

Combine test subject_id, test activity_id and test data into one dataset

Combine test and train data

Keep only columns with mean or std

Merge dataset with mean and std values to get one dataset with descriptive names

Melt the dataset with descriptive activities

Cast the melted dataset by activity and subject

Create a tidy data file


The Tidy dataset has the following sturcture:

 $ activity_id                         : int  
 $ activity_name                       : Factor w/ 6 levels 
 $ subject_id                          : int  
 $ tBodyAcc-mean()-X                   : num  
 $ tBodyAcc-mean()-Y                   : num  
 $ tBodyAcc-mean()-Z                   : num  
 $ tGravityAcc-mean()-X                : num  
 $ tGravityAcc-mean()-Y                : num  
 $ tGravityAcc-mean()-Z                : num  
 $ tBodyAccJerk-mean()-X               : num  
 $ tBodyAccJerk-mean()-Y               : num  
 $ tBodyAccJerk-mean()-Z               : num  
 $ tBodyGyro-mean()-X                  : num  
 $ tBodyGyro-mean()-Y                  : num  
 $ tBodyGyro-mean()-Z                  : num  
 $ tBodyGyroJerk-mean()-X              : num  
 $ tBodyGyroJerk-mean()-Y              : num  
 $ tBodyGyroJerk-mean()-Z              : num  
 $ tBodyAccMag-mean()                  : num  
 $ tGravityAccMag-mean()               : num  
 $ tBodyAccJerkMag-mean()              : num  
 $ tBodyGyroMag-mean()                 : num  
 $ tBodyGyroJerkMag-mean()             : num  
 $ fBodyAcc-mean()-X                   : num  
 $ fBodyAcc-mean()-Y                   : num  
 $ fBodyAcc-mean()-Z                   : num  
 $ fBodyAcc-meanFreq()-X               : num  
 $ fBodyAcc-meanFreq()-Y               : num  
 $ fBodyAcc-meanFreq()-Z               : num  
 $ fBodyAccJerk-mean()-X               : num  
 $ fBodyAccJerk-mean()-Y               : num  
 $ fBodyAccJerk-mean()-Z               : num  
 $ fBodyAccJerk-meanFreq()-X           : num  
 $ fBodyAccJerk-meanFreq()-Y           : num  
 $ fBodyAccJerk-meanFreq()-Z           : num  
 $ fBodyGyro-mean()-X                  : num  
 $ fBodyGyro-mean()-Y                  : num  
 $ fBodyGyro-mean()-Z                  : num  
 $ fBodyGyro-meanFreq()-X              : num  
 $ fBodyGyro-meanFreq()-Y              : num  
 $ fBodyGyro-meanFreq()-Z              : num  
 $ fBodyAccMag-mean()                  : num  
 $ fBodyAccMag-meanFreq()              : num  
 $ fBodyBodyAccJerkMag-mean()          : num  
 $ fBodyBodyAccJerkMag-meanFreq()      : num  
 $ fBodyBodyGyroMag-mean()             : num  
 $ fBodyBodyGyroMag-meanFreq()         : num  
 $ fBodyBodyGyroJerkMag-mean()         : num  
 $ fBodyBodyGyroJerkMag-meanFreq()     : num  
 $ angle(tBodyAccMean,gravity)         : num  
 $ angle(tBodyAccJerkMean),gravityMean): num  
 $ angle(tBodyGyroMean,gravityMean)    : num  
 $ angle(tBodyGyroJerkMean,gravityMean): num 
 $ angle(X,gravityMean)                : num  
 $ angle(Y,gravityMean)                : num  
 $ angle(Z,gravityMean)                : num  
 $ tBodyAcc-std()-X                    : num  
 $ tBodyAcc-std()-Y                    : num  
 $ tBodyAcc-std()-Z                    : num  
 $ tGravityAcc-std()-X                 : num  
 $ tGravityAcc-std()-Y                 : num  
 $ tGravityAcc-std()-Z                 : num  
 $ tBodyAccJerk-std()-X                : num  
 $ tBodyAccJerk-std()-Y                : num  
 $ tBodyAccJerk-std()-Z                : num  
 $ tBodyGyro-std()-X                   : num  
 $ tBodyGyro-std()-Y                   : num  
 $ tBodyGyro-std()-Z                   : num  
 $ tBodyGyroJerk-std()-X               : num  
 $ tBodyGyroJerk-std()-Y               : num  
 $ tBodyGyroJerk-std()-Z               : num  
 $ tBodyAccMag-std()                   : num  
 $ tGravityAccMag-std()                : num  
 $ tBodyAccJerkMag-std()               : num  
 $ tBodyGyroMag-std()                  : num  
 $ tBodyGyroJerkMag-std()              : num  
 $ fBodyAcc-std()-X                    : num  
 $ fBodyAcc-std()-Y                    : num  
 $ fBodyAcc-std()-Z                    : num  
 $ fBodyAccJerk-std()-X                : num  
 $ fBodyAccJerk-std()-Y                : num  
 $ fBodyAccJerk-std()-Z                : num  
 $ fBodyGyro-std()-X                   : num  
 $ fBodyGyro-std()-Y                   : num  
 $ fBodyGyro-std()-Z                   : num  
 $ fBodyAccMag-std()                   : num  
 $ fBodyBodyAccJerkMag-std()           : num  
 $ fBodyBodyGyroMag-std()              : num  
 $ fBodyBodyGyroJerkMag-std()          : num 
