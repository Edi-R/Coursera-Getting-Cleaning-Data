# Code Book for tidy_agg.txt

tidy_agg.txt is a tidy dataset created using data from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Please link to the Dataset website and refer to the README.txt file for a description of the files in the dataset, and to the features_info.txt file for a description of the measurement variables.

tidy_agg.txt contain averages of the mean and standard deviation of the variables from the test and training datasets by subject and activity.
It is created by running the R script run_analysis.R.

For details of how tidy_agg.txt is created, please refer to [Tidy Agg Read Me](https://github.com/Edi-R/Coursera-Getting-Cleaning-Data/blob/master/README.md)


Description of the Variables in tidy_agg.txt:

Subject
+ Integer from 1 to 30
+ A unique ID for the subject whose activities were measured in the observation
+ source:  test/subject_test.txt and train/subject_train.txt from the Human Activity Recognition dataset

Activity
+ can be one of the following values: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
+ Activity being measured in the observation
+ Value is the Descriptive Activity Name obtained by cross-referencing the activity numbers in y_test and y_train against the activity numbers in activity_labels.
+ source: test/y_test.txt, train/y_train.txt, activity_labels.txt

The following variables are averages by subject and activity of mean and standard deviations of the measurements in the original dataset.
For example, AvgOf_tBodyAcc-mean()-X is the average of variable tBodyAcc-mean()-X from the original training and test datasets

AvgOf_tBodyAcc-mean()-X  
AvgOf_tBodyAcc-mean()-Y  
AvgOf_tBodyAcc-mean()-Z  
AvgOf_tBodyAcc-std()-X  
AvgOf_tBodyAcc-std()-Y  
AvgOf_tBodyAcc-std()-Z  
AvgOf_tGravityAcc-mean()-X  
AvgOf_tGravityAcc-mean()-Y  
AvgOf_tGravityAcc-mean()-Z  
AvgOf_tGravityAcc-std()-X  
AvgOf_tGravityAcc-std()-Y  
AvgOf_tGravityAcc-std()-Z  
AvgOf_tBodyAccJerk-mean()-X  
AvgOf_tBodyAccJerk-mean()-Y  
AvgOf_tBodyAccJerk-mean()-Z  
AvgOf_tBodyAccJerk-std()-X  
AvgOf_tBodyAccJerk-std()-Y  
AvgOf_tBodyAccJerk-std()-Z  
AvgOf_tBodyGyro-mean()-X  
AvgOf_tBodyGyro-mean()-Y  
AvgOf_tBodyGyro-mean()-Z  
AvgOf_tBodyGyro-std()-X  
AvgOf_tBodyGyro-std()-Y  
AvgOf_tBodyGyro-std()-Z  
AvgOf_tBodyGyroJerk-mean()-X  
AvgOf_tBodyGyroJerk-mean()-Y  
AvgOf_tBodyGyroJerk-mean()-Z  
AvgOf_tBodyGyroJerk-std()-X  
AvgOf_tBodyGyroJerk-std()-Y  
AvgOf_tBodyGyroJerk-std()-Z  
AvgOf_tBodyAccMag-mean()  
AvgOf_tBodyAccMag-std()  
AvgOf_tGravityAccMag-mean()  
AvgOf_tGravityAccMag-std()  
AvgOf_tBodyAccJerkMag-mean()  
AvgOf_tBodyAccJerkMag-std()  
AvgOf_tBodyGyroMag-mean()  
AvgOf_tBodyGyroMag-std()  
AvgOf_tBodyGyroJerkMag-mean()  
AvgOf_tBodyGyroJerkMag-std()  
AvgOf_fBodyAcc-mean()-X  
AvgOf_fBodyAcc-mean()-Y  
AvgOf_fBodyAcc-mean()-Z  
AvgOf_fBodyAcc-std()-X  
AvgOf_fBodyAcc-std()-Y  
AvgOf_fBodyAcc-std()-Z  
AvgOf_fBodyAccJerk-mean()-X  
AvgOf_fBodyAccJerk-mean()-Y  
AvgOf_fBodyAccJerk-mean()-Z  
AvgOf_fBodyAccJerk-std()-X  
AvgOf_fBodyAccJerk-std()-Y  
AvgOf_fBodyAccJerk-std()-Z  
AvgOf_fBodyGyro-mean()-X  
AvgOf_fBodyGyro-mean()-Y  
AvgOf_fBodyGyro-mean()-Z  
AvgOf_fBodyGyro-std()-X  
AvgOf_fBodyGyro-std()-Y  
AvgOf_fBodyGyro-std()-Z  
AvgOf_fBodyAccMag-mean()  
AvgOf_fBodyAccMag-std()  
AvgOf_fBodyBodyAccJerkMag-mean()  
AvgOf_fBodyBodyAccJerkMag-std()  
AvgOf_fBodyBodyGyroMag-mean()  
AvgOf_fBodyBodyGyroMag-std()  
AvgOf_fBodyBodyGyroJerkMag-mean()  
AvgOf_fBodyBodyGyroJerkMag-std()  
