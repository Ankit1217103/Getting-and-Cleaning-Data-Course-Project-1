---
title: "README"
author: "Daniel Friedheim"
date: "March 25, 2017"
output: html_document
---

# Project: creating a tidy data set using Human Activity Recognition study
## Course: Getting & Cleaning Data (Leek & Peng, Coursera, March 2017)
### Student: Daniel Friedheim

### Included files:

        tidyAverages.txt
        run_analysis.R
        codeBook.md

The `run_analysis.R` script produces the `tidyAverages.txt` file summarizing acceleration and velocity measurements from smart phones worn by subjects while conducting different physical activities. It does so in 5 steps: 

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement.
    3. Uses descriptive activity names to name the activities in the data set.
    4. Appropriately labels the data set with descriptive variable names.
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

To replicate the `tidyAverages.txt` file, use `run_analysis.R` in any installation of R 
with the required `reader`, `plyr` and `dplyr` packages.

### What makes this data set tidy?

`run_analysis.R` produces a tidy data set in which each column contains only one variable, each
row contains data for only one combination of subjct and activity, and variables are names are easy to understand words, not cryptic technical abbreviations. Code snippets making these tidy transformations include:

* tolower(activityLabels$label)  [drops all caps in activity labels]

* finalTrainAndTest$activity<-factor(finalTrainAndTest$activity, labels=activityLabels$label)  [replaces activity # with description]

* names(finalTrainAndTest)<-gsub("^t","time",names(finalTrainAndTest))  [and 10 more lines expanding all abbreviations in variable names to reflect time and frequncy dimensions, Mean and Standard Deviation units, Acceleration and Velocity measured by accelerometer and gyroscope respectively, the Magnitude summary statistic, and removing duplicate Body]

* tidyAverages<-aggregate(. ~subject + activity, finalTrainAndTest, mean) [produces separate rows for each combination of subject and activity]
                
Subjects were left anonymous, of course, identified only by number.

See `codeBook.md` for all activities and measurements contained in the `tidyAverages.txt` file, a link the full data set it summarizes, a description of the original study that generated that full data set, and acitation of that study.
