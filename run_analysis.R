## Preliminaries: download data, read in and combine subject, activity and raw data files

if(!file.exists("./data")){dir.create("./data")}
URL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL,"./data/Dataset.zip")
unzip(zipfile="./data/Dataset.zip",exdir="./data")
library(readr)
activityLabels<-read_table("./data/UCI HAR Dataset/activity_labels.txt",col_names=c("#","label"))
activityLabels$label<-tolower(activityLabels$label)

features<-read.table("./data/UCI HAR Dataset/features.txt",header=FALSE)
features$V2<-as.character(features$V2)

subjectTrain<-read_table("./data/UCI HAR Dataset/train/subject_train.txt",col_names="subject")
yTrain<-read_table("./data/UCI HAR Dataset/train/y_train.txt",col_names="activity")
subjectActivityTrain<-cbind(subjectTrain,yTrain)
xTrain<-read_table("./data/UCI HAR Dataset/train/X_train.txt",
                   col_names=features$V2)
fullTrain<-cbind(subjectActivityTrain,xTrain)

subjectTest<-read_table("./data/UCI HAR Dataset/test/subject_test.txt",col_names="subject")
yTest<-read_table("./data/UCI HAR Dataset/test/y_test.txt",col_names="activity")
subjectActivityTest<-cbind(subjectTest,yTest)
xTest<-read_table("./data/UCI HAR Dataset/test/X_test.txt",
                  col_names=features$V2)
fullTest<-cbind(subjectActivityTest,xTest)

## Step 1. Merges the training and the test sets to create one data set.

fullTrainAndTest<-rbind(fullTrain,fullTest)

## Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.

library(plyr)
library(dplyr)
finalTrainAndTest<-select(fullTrainAndTest,grep("subject|activity|mean\\(\\)|std\\(\\)",
                                                colnames(fullTrainAndTest)))

## Step 3. Uses descriptive activity names to name the activities in the data set

finalTrainAndTest$activity<-factor(finalTrainAndTest$activity,labels=activityLabels$label)

## Step 4. Appropriately labels the data set with descriptive variable names.

names(finalTrainAndTest)<-gsub("^t","time",names(finalTrainAndTest))
names(finalTrainAndTest)<-gsub("^f","frequency",names(finalTrainAndTest))
names(finalTrainAndTest)<-gsub("Acc","Acceleration",names(finalTrainAndTest))
names(finalTrainAndTest)<-gsub("Gyro","Velocity",names(finalTrainAndTest))
names(finalTrainAndTest)<-gsub("Mag","Magnitude",names(finalTrainAndTest))
names(finalTrainAndTest)<-gsub("Mean\\(\\)","Mean",names(finalTrainAndTest))
names(finalTrainAndTest)<-gsub("-std\\(\\)","StandardDeviation",names(finalTrainAndTest))
names(finalTrainAndTest)<-gsub("X$","X axis",names(finalTrainAndTest))
names(finalTrainAndTest)<-gsub("Y$","Y axis",names(finalTrainAndTest))
names(finalTrainAndTest)<-gsub("Z$","Z axis",names(finalTrainAndTest))
names(finalTrainAndTest)<-gsub("BodyBody","Body",names(finalTrainAndTest))

## Step 5. From the data set in step 4, creates a second, independent tidy data set with 
## the average of each variable for each activity and each subject.

tidyAverages<-aggregate(. ~subject + activity, finalTrainAndTest, mean)
write.table(tidyAverages, "tidyAverages.txt", row.names = FALSE, quote = FALSE)







