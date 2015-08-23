# Course Project for Coursera - Getting & Cleaning Data
# 
# R Script to transform the Human Activity Recognition Using Smartphones Dataset
#    into a tidy data set for later analysis

# if any of the required text files are not in the current working directory
#   download from the Course website and unzip

ds_dir <-"UCI HAR Dataset"
test_dir <- paste(ds_dir,"test",sep="/")
train_dir <- paste(ds_dir,"train",sep="/")

if (!(sum(c("features.txt","activity_labels.txt") %in% dir(ds_dir)) == 2 &
    sum(c("X_test.txt","y_test.txt","subject_test.txt") %in% dir(test_dir)==3 &
    sum(c("X_train.txt","y_train.txt","subject_train.txt") %in% dir(train_dir))==3))) {
    	
	zipfile <- "getdata-projectfiles-UCI HAR Dataset.zip"
	
	if (!file.exists(zipfile)) {
		URL<-"http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
		download.file( URL, destfile = zipfile )
		}

	unzip(zipfile)
}


#read in data that will be used for both test and training data sets

# variable names 
features<-read.table(paste(ds_dir,"features.txt",sep="/"))

# activity labels (Walking, Sitting, etc) 
activity_labels<-read.table(paste(ds_dir,"activity_labels.txt",sep="/"))

## read test data
y_test<-read.table(paste(test_dir,"y_test.txt",sep="/"))
subject_test<-read.table(paste(test_dir,"subject_test.txt",sep="/"))
X_test <- read.table(paste(test_dir,"X_test.txt",sep="/"))

## format the measurements data frame
# step 1: set the variable names 
names(X_test)<-as.character(features$V2)

# step 2: keep only the measurements on the mean and standard deviation for each measurement
#         exclude certain columns with mean in the name such as meanFreq or the angle variables
X_test<-X_test[,grep("mean\\(|std\\(",names(X_test))]

# step 3: add activity column
X_test$Activity<-{function(x) activity_labels[x,2]} (y_test$V1)

# step 4: add subject column
X_test$Subject<-subject_test$V1


## read training data
y_train<-read.table(paste(train_dir,"y_train.txt",sep="/"))
subject_train<-read.table(paste(train_dir,"subject_train.txt",sep="/"))
X_train <- read.table(paste(train_dir,"X_train.txt",sep="/"))

## format the measurements data frame
# step 1: set the variable names
names(X_train)<-as.character(features$V2)

# step 2: keep only the measurements on the mean and standard deviation for each measurement
#         exclude certain columns with mean in the name such as meanFreq or the angle variables
X_train<-X_train[,grep("mean\\(|std\\(",names(X_train))]

# step 3: add activity column
X_train$Activity<-{function(x) activity_labels[x,2]} (y_train$V1)

# step 4: add subject column
X_train$Subject<-subject_train$V1


# merge the tidied training and test sets
tidy<-rbind(X_test,X_train)

# create a new tidy dataset with the average of each variable, grouped by Activity and Subject
tidy_agg<-aggregate(.~Subject+Activity,tidy,mean) 
names(tidy_agg)[3:68] <- paste("AvgOf",names(tidy_agg)[3:68],sep="_")

# write the data set to a text file
write.table(tidy_agg,file="tidy_agg.txt",row.names=F)
