---
title: "CodeBook"
author: "Daniel Friedheim"
date: "March 24, 2017"
output: html_document
---

## Human Activity Recognition, tidy data set

This is the code book for the `tidyAverages.txt` file that containcs a tidy data set averaging the mean and standard of 68 measurements of acceleration and velocity for 30 subjects doing 6 activities while wearing a cell phone on their waist. Their phones' accelerometer and gyroscope generated the original measurements, which are available in the complete data set from UCI ([click here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)). The original Human Activity Recognition study was conducted by researchers at the Universiti deglicStudi di Genova (Italy). The `tidyAverages.txt` file is tidy, because its columns contain only one variable, its rows contain averages for only one combination of subject and activity, and its labels are in easy to understand words, not cryptic technical abbreviations. For easy reading, it is grouped in desending order by subject number then activity. 

### Identifiers: columns 1-2

 [1] "subject" - ID number of anonymous test subject (1-30)                                                 
 [2] "activity" - The activity performed while the subject's acceleration and velocity were measured (1-6, see below)         
 
### Measurements (variables): columns 3-68

 [3] "timeBodyAcceleration-mean()-X axis"                         
 [4] "timeBodyAcceleration-mean()-Y axis"                         
 [5] "timeBodyAcceleration-mean()-Z axis"                         
 [6] "timeBodyAccelerationStandardDeviation-X axis"               
 [7] "timeBodyAccelerationStandardDeviation-Y axis"               
 [8] "timeBodyAccelerationStandardDeviation-Z axis"               
 [9] "timeGravityAcceleration-mean()-X axis"                      
[10] "timeGravityAcceleration-mean()-Y axis"                      
[11] "timeGravityAcceleration-mean()-Z axis"                      
[12] "timeGravityAccelerationStandardDeviation-X axis"            
[13] "timeGravityAccelerationStandardDeviation-Y axis"            
[14] "timeGravityAccelerationStandardDeviation-Z axis"            
[15] "timeBodyAccelerationJerk-mean()-X axis"                     
[16] "timeBodyAccelerationJerk-mean()-Y axis"                     
[17] "timeBodyAccelerationJerk-mean()-Z axis"                     
[18] "timeBodyAccelerationJerkStandardDeviation-X axis"           
[19] "timeBodyAccelerationJerkStandardDeviation-Y axis"           
[20] "timeBodyAccelerationJerkStandardDeviation-Z axis"           
[21] "timeBodyVelocity-mean()-X axis"                             
[22] "timeBodyVelocity-mean()-Y axis"                             
[23] "timeBodyVelocity-mean()-Z axis"                             
[24] "timeBodyVelocityStandardDeviation-X axis"                   
[25] "timeBodyVelocityStandardDeviation-Y axis"                   
[26] "timeBodyVelocityStandardDeviation-Z axis"                   
[27] "timeBodyVelocityJerk-mean()-X axis"                         
[28] "timeBodyVelocityJerk-mean()-Y axis"                         
[29] "timeBodyVelocityJerk-mean()-Z axis"                         
[30] "timeBodyVelocityJerkStandardDeviation-X axis"               
[31] "timeBodyVelocityJerkStandardDeviation-Y axis"               
[32] "timeBodyVelocityJerkStandardDeviation-Z axis"               
[33] "timeBodyAccelerationMagnitude-mean()"                       
[34] "timeBodyAccelerationMagnitudeStandardDeviation"             
[35] "timeGravityAccelerationMagnitude-mean()"                    
[36] "timeGravityAccelerationMagnitudeStandardDeviation"          
[37] "timeBodyAccelerationJerkMagnitude-mean()"                   
[38] "timeBodyAccelerationJerkMagnitudeStandardDeviation"         
[39] "timeBodyVelocityMagnitude-mean()"                           
[40] "timeBodyVelocityMagnitudeStandardDeviation"                 
[41] "timeBodyVelocityJerkMagnitude-mean()"                       
[42] "timeBodyVelocityJerkMagnitudeStandardDeviation"             
[43] "frequencyBodyAcceleration-mean()-X axis"                    
[44] "frequencyBodyAcceleration-mean()-Y axis"                    
[45] "frequencyBodyAcceleration-mean()-Z axis"                    
[46] "frequencyBodyAccelerationStandardDeviation-X axis"          
[47] "frequencyBodyAccelerationStandardDeviation-Y axis"          
[48] "frequencyBodyAccelerationStandardDeviation-Z axis"          
[49] "frequencyBodyAccelerationJerk-mean()-X axis"                
[50] "frequencyBodyAccelerationJerk-mean()-Y axis"                
[51] "frequencyBodyAccelerationJerk-mean()-Z axis"                
[52] "frequencyBodyAccelerationJerkStandardDeviation-X axis"      
[53] "frequencyBodyAccelerationJerkStandardDeviation-Y axis"      
[54] "frequencyBodyAccelerationJerkStandardDeviation-Z axis"      
[55] "frequencyBodyVelocity-mean()-X axis"                        
[56] "frequencyBodyVelocity-mean()-Y axis"                        
[57] "frequencyBodyVelocity-mean()-Z axis"                        
[58] "frequencyBodyVelocityStandardDeviation-X axis"              
[59] "frequencyBodyVelocityStandardDeviation-Y axis"              
[60] "frequencyBodyVelocityStandardDeviation-Z axis"              
[61] "frequencyBodyAccelerationMagnitude-mean()"                  
[62] "frequencyBodyAccelerationMagnitudeStandardDeviation"        
[63] "frequencyBodyAccelerationJerkMagnitude-mean()"          
[64] "frequencyBodyAccelerationJerkMagnitudeStandardDeviation"
[65] "frequencyBodyVelocityMagnitude-mean()"                  
[66] "frequencyBodyVelocityMagnitudeStandardDeviation"        
[67] "frequencyBodyVelocityJerkMagnitude-mean()"              
[68] "frequencyBodyVelocityJerkMagnitudeStandardDeviation"

### Activity Labels (6)

1. walking
2. walking_upstairs
3. walking_downstairs
4. sitting
5. standing
6. laying


## Citation: 
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.  