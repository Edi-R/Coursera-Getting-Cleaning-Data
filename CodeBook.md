# Code Book for tidy_agg.txt

tidy_agg.txt is a tidy dataset created using data from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
Please link to the Dataset website and refer to the README.txt file for a description of the files in the dataset, and to the features_info.txt file for a description of the measurement variables.

tidy_agg.txt contain averages of the mean and standard deviation of the variables from the test and training datasets by subject and activity.
It is created by running the R script run_analysis.R.
For details of 


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
For example, AvgOf_tBodyAcc-mean()-X is the average of variable tBodyAcc-mean()-X from 
These variables names are derived from X_test and X_train
