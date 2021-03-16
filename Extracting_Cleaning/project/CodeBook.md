Human Activity Recognition Using Smartphones Dataset  
Version 1.0  

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Università degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws  
www.smartlab.ws  

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'freq' to indicate frequency domain signals).  

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  

The set of variables that were estimated from these signals are:  
mean(): Mean value  
std(): Standard deviation

# Name of finalized tidy data: "tidydata.txt"
# tidyata Variables

"subject" - the id number of subjects  
"activity" - the type of activity performed consisting of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING  
"timeBodyAcc.mean().X"  
"timeBodyAcc.mean().Y"  
"timeBodyAcc.mean().Z"  
"timeGravityAcc.mean().X"  
"timeGravityAcc.mean().Y"  
"timeGravityAcc.mean().Z"  
"timeBodyAccJerk.mean().X"  
"timeBodyAccJerk.mean().Y"  
"timeBodyAccJerk.mean().Z"  
"timeBodyGyro.mean().X"  
"timeBodyGyro.mean().Y"  
"timeBodyGyro.mean().Z"  
"timeBodyGyroJerk.mean().X"  
"timeBodyGyroJerk.mean().Y"  
"timeBodyGyroJerk.mean().Z"  
"timeBodyAccMag.mean()"  
"timeGravityAccMag.mean()"  
"timeBodyAccJerkMag.mean()"  
"timeBodyGyroMag.mean()"  
"timeBodyGyroJerkMag.mean()"  
"freqBodyAcc.mean().X"  
"freqBodyAcc.mean().Y"  
"freqBodyAcc.mean().Z"  
"freqBodyAcc.meanFreq().X"  
"freqBodyAcc.meanFreq().Y"  
"freqBodyAcc.meanFreq().Z"  
"freqBodyAccJerk.mean().X"  
"freqBodyAccJerk.mean().Y"  
"freqBodyAccJerk.mean().Z"  
"freqBodyAccJerk.meanFreq().X"  
"freqBodyAccJerk.meanFreq().Y"  
"freqBodyAccJerk.meanFreq().Z"   
"freqBodyGyro.mean().X"  
"freqBodyGyro.mean().Y"  
"freqBodyGyro.mean().Z"  
"freqBodyGyro.meanFreq().X"  
"freqBodyGyro.meanFreq().Y"  
"freqBodyGyro.meanFreq().Z"  
"freqBodyAccMag.mean()"  
"freqBodyAccMag.meanFreq()"  
"freqBodyBodyAccJerkMag.mean()"  
"freqBodyBodyAccJerkMag.meanFreq()"  
"freqBodyBodyGyroMag.mean()"  
"freqBodyBodyGyroMag.meanFreq()"  
"freqBodyBodyGyroJerkMag.mean()"  
"freqBodyBodyGyroJerkMag.meanFreq()"  
"timeBodyAcc.std().X"  
"timeBodyAcc.std().Y"  
"timeBodyAcc.std().Z"  
"timeGravityAcc.std().X"  
"timeGravityAcc.std().Y"  
"timeGravityAcc.std().Z"  
"timeBodyAccJerk.std().X"  
"timeBodyAccJerk.std().Y"  
"timeBodyAccJerk.std().Z"  
"timeBodyGyro.std().X"  
"timeBodyGyro.std().Y"  
"timeBodyGyro.std().Z"  
"timeBodyGyroJerk.std().X"  
"timeBodyGyroJerk.std().Y"  
"timeBodyGyroJerk.std().Z"  
"timeBodyAccMag.std()"  
"timeGravityAccMag.std()"  
"timeBodyAccJerkMag.std()"  
"timeBodyGyroMag.std()"  
"timeBodyGyroJerkMag.std()"  
"freqBodyAcc.std().X"  
"freqBodyAcc.std().Y"  
"freqBodyAcc.std().Z"  
"freqBodyAccJerk.std().X"  
"freqBodyAccJerk.std().Y"  
"freqBodyAccJerk.std().Z"  
"freqBodyGyro.std().X"  
"freqBodyGyro.std().Y"  
"freqBodyGyro.std().Z"  
"freqBodyAccMag.std()"  
"freqBodyBodyAccJerkMag.std()"  
"freqBodyBodyGyroMag.std()"  
"freqBodyBodyGyroJerkMag.std()"  

# Transformations performed to clean the data

Packages used: plyr and dplys

1. Merged the training and the test sets to create one data set.
2. Extracted only the measurements on the mean and standard deviation for each measurement. 
3. Used descriptive activity names to name the activities in the data set
4. Appropriately labeled the data set with descriptive variable names. Removal of ","; Replaced "-" with "."; Replaced "f" and "t" to "freq" and "time".
5. From the data set in step 4, created a tidy data set with the average of each variable for each activity and each subject.
6. The tidy data set was exported to a space dilimited file called "tidydata.txt"
