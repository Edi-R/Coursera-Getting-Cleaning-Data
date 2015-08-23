# Coursera-Getting-Cleaning-Data Course Project
#
#
run_analysis.R is an R script file that creates a tidied, summary file 
from the Human Activity Recognition Using SmartPhones Data Set found on the UCI Machine Learning Repository
  (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

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
    - 'train/subject_train.txt': Each row identifies the subject in the training dataset who performed the activity for each window sample. Its range is from 1 to 30.   
    - 'test/subject_test.txt': Each row identifies the subject in the test dataset who performed the activity for each window sample. Its range is from 1 to 30.   
REFERENCE: readme.txt from [Human Activity Recognition Using SmartPhones Data Set] (http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip)


the script first checks if all the necessary text files from the dataset are in the working directory.

if any of the files are missing, the script will unzip it from the zip file getdata-projectfiles-UCI HAR Dataset.zip.
if the zipfile doesn't exist, the script will download it from course website:
    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

the script first reads the features.txt and activity_labels.txt files into the data frames features and activity_labels respectively.  

The test files are read in and the test measurement dataframe is transformed as follows:

1. the column names of dataframe X_test are changed to the descriptive variable names found in the features dataframe.

2. Descriptive variable names in X_test are used to select only the measurements on the mean and standard deviation.
Variable names containing the words "mean()" or "std()" are selected.
Variables names such as "fBodyBodyGyroMag-meanFreq()" or "angle(X,gravityMean)" are excluded as these seem to imply they are not the mean and standard deviations of measurements but are the raw measurements.

3. a new column "Activity" containing descriptive activity names is added to X_test.
dataframe y_test is used  to cross reference the  activity description from dataframe Activity_labels. The activity descriptions are added directly into the new column "Activity".

4. a new column "Subject" which identifies the subject in the test dataset who performed the activity is added to X_test using the dataframe subject_test.

Repeat Steps 1 and 4 above for the training dataset.

a tidied dataset "tidy" is created by appending the training measurements "X_train" to the test measurements "X_test"
a 2nd dataset "tidy_agg" is created with the average of each activity and each subject from the dataframe "tidy".
the dataset "tidy_agg" is written to a text file "tidy_agg.txt" in the current working directory.






  



