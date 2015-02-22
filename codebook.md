Please note that all about script work is in ReadMe.md in the same repo. 

First I'd like to introduce feature selection section from original Samsung data. Please note: In script I used make.names() function which replace "-" and "()" in original feature names to dots "." 

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

=================

Features are normalized and bounded within [-1,1] so we don't need units. 

Variables in a final data set:

subject
  * Persons who attended experimant. 30 persons. (1..30)
 
activity
 * Type of activity (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying)
  
tBodyAcc.mean...X
  * body acceleration mean by X-axis (time domain signal)

tBodyAcc.mean...Y
* body acceleration mean by Y-axis (time domain signal)
 
tBodyAcc.mean...Z
  * body acceleration mean by Z-axis (time domain signal)
 
tGravityAcc.mean...X
  * gravity acceleration mean by X-axis (time domain signal)

tGravityAcc.mean...Y
  * gravity acceleration mean by Y-axis (time domain signal)

tGravityAcc.mean...Z
  * gravity acceleration mean by Z-axis (time domain signal)

tBodyAccJerk.mean...X
  * body acceleration Jerk signal mean by X-axis (time domain signal)

tBodyAccJerk.mean...Y
   * body acceleration Jerk signal mean by Y-axis (time domain signal)

tBodyAccJerk.mean...Z
   * body acceleration Jerk signal mean by Z-axis (time domain signal)

tBodyGyro.mean...X
  * gyroscope signal mean by X-axis (time domain signal)

tBodyGyro.mean...Y
  * gyroscope signal mean by Y-axis (time domain signal)

tBodyGyro.mean...Z
  * gyroscope signal mean by Z-axis (time domain signal)

tBodyGyroJerk.mean...X
  * Jerk gyroscope signal mean by X-axis (time domain signal)

tBodyGyroJerk.mean...Y
  * Jerk gyroscope signal mean by Y-axis (time domain signal)

tBodyGyroJerk.mean...Z
 * Jerk gyroscope signal mean by Z-axis (time domain signal)

tBodyAccMag.mean..
  * Magnitude of body acceleration signal mean (time domain signal)

tGravityAccMag.mean..
  * Magnitude of gravity acceleration signal mean(time domain signal)

tBodyAccJerkMag.mean..
  * Magnitude of Jerk signal body acceleration signal mean(time domain signal)

tBodyGyroMag.mean..
  * Magnitude of body gyroscope signal mean(time domain signal)

tBodyGyroJerkMag.mean..
  * Magnitude of Jerk signal body gyroscope signal mean(time domain signal)

fBodyAcc.mean...X
  * body acceleration by X-axis mean(Fast Fourier Transform)

fBodyAcc.mean...Y
  * body acceleration by Y-axis mean (Fast Fourier Transform)

fBodyAcc.mean...Z
  * body acceleration by Z-axis mean (Fast Fourier Transform)

fBodyAcc.meanFreq...X
  * body acceleration mean frequancy by X-axis (Fast Fourier Transform)

fBodyAcc.meanFreq...Y
  * body acceleration mean frequancy by Y-axis (Fast Fourier Transform)

fBodyAcc.meanFreq...Z
  * body acceleration mean frequancy by Z-axis (Fast Fourier Transform)

fBodyAccJerk.mean...X
  * jerk body acceleration  mean signal by X-axis (Fast Fourier Transform)

fBodyAccJerk.mean...Y
  * jerk body acceleration mean signal by Y-axis (Fast Fourier Transform)

fBodyAccJerk.mean...Z
  * jerk body acceleration mean signal by Z-axis (Fast Fourier Transform)

fBodyAccJerk.meanFreq...X
  * jerk body acceleration signal mean frequancy by X-axis (Fast Fourier Transform)

fBodyAccJerk.meanFreq...Y
  * jerk body acceleration signal mean frequancy by Y-axis (Fast Fourier Transform)

fBodyAccJerk.meanFreq...Z
  * jerk body acceleration signal mean frequancy by Z-axis (Fast Fourier Transform)

fBodyGyro.mean...X
 * body gyroscope signal mean by X-axis (Fast Fourier Transform)

fBodyGyro.mean...Y
  * body gyroscope signal mean by Y-axis (Fast Fourier Transform)

fBodyGyro.mean...Z
  * body gyroscope signal mean by Z-axis (Fast Fourier Transform)

fBodyGyro.meanFreq...X
  * body gyroscope signal mean frequancy by X-axis (Fast Fourier Transform)

fBodyGyro.meanFreq...Y
  * body gyroscope signal mean frequancy by Y-axis (Fast Fourier Transform)

fBodyGyro.meanFreq...Z
  * body gyroscope signal mean frequancy by Z-axis (Fast Fourier Transform)

fBodyAccMag.mean..
  * Magnitude body acceleration mean (Fast Fourier Transform)

fBodyAccMag.meanFreq..
   * Magnitude body acceleration mean frequancy (Fast Fourier Transform)

fBodyAccJerkMag.mean..
  * Magnitude Jerk body acceleration signal mean (Fast Fourier Transform)

fBodyAccJerkMag.meanFreq..
 *  Magnitude Jerk body acceleration signal mean frequancy (Fast Fourier Transform)

fBodyGyroMag.mean..
 *  Magnitude body gyroscpope mean (Fast Fourier Transform)

fBodyGyroMag.meanFreq..
  * Magnitude body gyroscpope mean frequency (Fast Fourier Transform)

fBodyGyroJerkMag.mean..
  * Magnitude jerk body gyroscpope mean ((Fast Fourier Transform)

fBodyGyroJerkMag.meanFreq..
  * Magnitude jerk body gyroscpope mean frequency (Fast Fourier Transform)

tBodyAcc.std...X
 *  body acceleration by X-axis standard deviation (time domain signal)

tBodyAcc.std...Y
  * body acceleration by Y-axis standard deviation (time domain signal)

tBodyAcc.std...Z
  * body acceleration by Z-axis standard deviation (time domain signal)

tGravityAcc.std...X
  * gravity acceleration by X-axis standard deviation (time domain signal)

tGravityAcc.std...Y
  * gravity acceleration by Y-axis standard deviation (time domain signal)

tGravityAcc.std...Z
  * gravity acceleration by Z-axis standard deviation (time domain signal)

tBodyAccJerk.std...X
  * jerk signal body acceleration by X-axis standard deviation (time domain signal)

tBodyAccJerk.std...Y
  * jerk signal body acceleration by Y-axis standard deviation (time domain signal)

tBodyAccJerk.std...Z
  * jerk signal body acceleration by Z-axis standard deviation (time domain signal)

tBodyGyro.std...X
 *  body gyroscope signal by X-axis standard deviation (time domain signal)

tBodyGyro.std...Y
  * body gyroscope signal by Y-axis standard deviation (time domain signal)

tBodyGyro.std...Z
  * body gyroscope signal by Z-axis standard deviation (time domain signal)

tBodyGyroJerk.std...X
  * jerk body gyroscope signal by X-axis standard deviation (time domain signal)

tBodyGyroJerk.std...Y
  * jerk body gyroscope signal by Y-axis standard deviation (time domain signal)

tBodyGyroJerk.std...Z
  * jerk body gyroscope signal by Z-axis standard deviation (time domain signal)

tBodyAccMag.std..
  * Magnitude body acceleration standard deviation (time domain signal)

tGravityAccMag.std..
  * Magnitude gravity acceleration standard deviation (time domain signal)

tBodyAccJerkMag.std..
  * Magnitude jerk body acceleration standard deviation (time domain signal)

tBodyGyroMag.std..
  * Magnitude body gyroscope standard deviation (time domain signal)

tBodyGyroJerkMag.std..
 * Magnitude jerk body gyroscope signal standard deviation (time domain signal)

fBodyAcc.std...X
  * body acceleration by X-axis standard deviation (Fast Fourier Transform)

fBodyAcc.std...Y
  * body acceleration by Y-axis standard deviation (Fast Fourier Transform)

fBodyAcc.std...Z
  * body acceleration by Z-axis standard deviation (Fast Fourier Transform)

fBodyAccJerk.std...X
  * jerk body acceleration by X-axis standard deviation (Fast Fourier Transform)

fBodyAccJerk.std...Y
  * jerk body acceleration by Y-axis standard deviation (Fast Fourier Transform)

fBodyAccJerk.std...Z
  * jerk body acceleration by Z-axis standard deviation (Fast Fourier Transform)

fBodyGyro.std...X
  * jerk body gyroscope by X-axis standard deviation (Fast Fourier Transform)

fBodyGyro.std...Y
  * jerk body gyroscope by Y-axis standard deviation (Fast Fourier Transform)

fBodyGyro.std...Z
  * jerk body gyroscope by Z-axis standard deviation (Fast Fourier Transform)

fBodyAccMag.std..
  * Magnitude body acceleration (Fast Fourier Transform)

fBodyAccJerkMag.std..
  * Magnitude jerk body acceleration (Fast Fourier Transform)

fBodyGyroMag.std..
  * Magnitude body gyroscope(Fast Fourier Transform)

fBodyGyroJerkMag.std..
  * Magnitude jerk body gyroscope (Fast Fourier Transform)
 
