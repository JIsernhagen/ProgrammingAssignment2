Code Book / Data Dictionary for Getting and Cleaning Data peer-graded programming assignment

Definitions/explanations of the original variable names are documented exhaustively in the features_info.txt file provided with the data, the contents of which appear below in case anyone thinks this document is incomplete without them.

The variables included (some means and standard deviations were excluded because of limitations of the capacity of the summarize function to handle long input strings) as as follows:
Subject:  the participants in the study, identified only by their numbers
Activity:  the six different physical activities the study participants were called upon to perform: walking horizontally, walking upstairs/downstairs, sitting, standing and lying down
"TimeBodyAcceleration_mean_X_mean"  mean x-axis time body acceleration
"TimeBodyAcceleration_mean_Y_mean"  mean y-axis time body acceleration
"TimeBodyAcceleration_mean_Z_mean"  mean z-axis time body acceleration
"TimeBodyAcceleration_std_X_mean"  standard deviation of x-axis time body acceleration
"TimeBodyAcceleration_std_Y_mean"  standard deviation of y-axis time body acceleration
"TimeBodyAcceleration_std_Z_mean"  standard deviation of z-axis time body acceleration
"TimeGravityAcceleration_mean_X_mean"  mean of mean time gravity x-axis acceleration
"TimeGravityAcceleration_mean_Y_mean"  mean of mean time gravity y-axis acceleration
"TimeGravityAcceleration_mean_Z_mean"  mean of mean time gravity z-axis acceleration
"TimeGravityAcceleration_std_X_mean"  standard deviation of mean time gravity x-axis acceleration
"TimeGravityAcceleration_std_Y_mean"  standard deviation of mean time gravity y-axis acceleration
"TimeGravityAcceleration_std_Z_mean"  standard deviation of mean time gravity z-axis acceleration
"TimeBodyAccelerationJerk_mean_X_mean"  mean of mean time body x-axis jerk (fourth derivative)
"TimeBodyAccelerationJerk_mean_Y_mean"  mean of mean time body y-axis jerk (fourth derivative)
"TimeBodyAccelerationJerk_mean_Z_mean"  mean of mean time body z-axis jerk (fourth derivative)
"TimeBodyAccelerationJerk_std_X_mean"  standard deviation of mean time body x-axis jerk (fourth derivative)
"TimeBodyAccelerationJerk_std_Y_mean"  standard deviation of mean time body y-axis jerk (fourth derivative)
"TimeBodyAccelerationJerk_std_Z_mean"  standard deviation of mean time body z-axis jerk (fourth derivative)
"TimeBodyGyro_mean_X_mean"  mean of mean of time body gyroscope x-axis angle
"TimeBodyGyro_mean_Y_mean"  mean of mean of time body gyroscope y-axis angle
"TimeBodyGyro_mean_Z_mean"  mean of mean of time body gyroscope z-axis angle
"TimeBodyGyro_std_X_mean"  standard deviation of mean of time body gyroscope x-axis angle
"TimeBodyGyro_std_Y_mean"  standard deviation of mean of time body gyroscope y-axis angle
"TimeBodyGyro_std_Z_mean"  standard deviation of mean of time body gyroscope z-axis angle
"TimeBodyGyroJerk_mean_X_mean"  mean of mean of time body gyroscope x-axis jerk (fourth derivative)
"TimeBodyGyroJerk_mean_Y_mean"  mean of mean of time body gyroscope y-axis jerk (fourth derivative)
"TimeBodyGyroJerk_mean_Z_mean"  mean of mean of time body gyroscope z-axis jerk (fourth derivative)
"TimeBodyGyroJerk_std_X_mean"  standard deviation of mean of time body gyroscope x-axis jerk (fourth derivative)
"TimeBodyGyroJerk_std_Y_mean"  standard deviation of mean of time body gyroscope y-axis jerk (fourth derivative
"TimeBodyGyroJerk_std_Z_mean"  standard deviation of mean of time body gyroscope z-axis jerk (fourth derivative
"TimeBodyAccelerationMagnitude_mean_mean"  mean of mean of magnitude of time body acceleration
"TimeBodyAccelerationMagnitude_std_mean"  standard deviation of mean of magnitude of time body acceleration
"TimeBodyAccelerationJerkMagnitude_mean_mean"  mean of mean magnitude of time body jerk (fourth derivative)
"TimeBodyAccelerationJerkMagnitude_std_mean"  standard deviation of mean magnitude of time body jerk (fourth derivative)
"TimeBodyGyroMagnitude_mean_mean"  mean of mean of time body gyroscope magnitude
"TimeBodyGyroMagnitude_std_mean"  standard deviation of mean of time body gyroscope magnitude
"TimeBodyGyroJerkMagnitude_mean_mean"  mean of mean of time body gyroscope jerk (fourth derivative) magnitude
"TimeBodyGyroJerkMagnitude_std_mean"  standard deviation of mean of time body gyroscope jerk (fourth derivative) magnitude
"FrequencyBodyAcceleration_mean_X_mean"  mean of mean of frequency body x-axis acceleration
"FrequencyBodyAcceleration_mean_Y_mean"  mean of mean of frequency body y-axis acceleration
"FrequencyBodyAcceleration_mean_Z_mean"  mean of mean of frequency body z-axis acceleration
"FrequencyBodyAcceleration_std_X_mean"  standard deviation of mean of frequency body x-axis acceleration
"FrequencyBodyAcceleration_std_Y_mean"  standard deviation of mean of frequency body y-axis acceleration
"FrequencyBodyAcceleration_std_Z_mean"  standard deviation of mean of frequency body z-axis acceleration
"FrequencyBodyAcceleration_meanFreq_X_mean"  mean of mean of frequency of body x-axis acceleration
"FrequencyBodyAcceleration_meanFreq_Y_mean"   mean of mean of frequency of body y-axis acceleration
"FrequencyBodyAcceleration_meanFreq_Z_mean"  mean of mean of frequency of body z-axis acceleration
"FrequencyBodyAccelerationJerk_mean_X_mean"  mean of mean of frequency of body x-axis jerk (fourth derivative)
"FrequencyBodyAccelerationJerk_mean_Y_mean"  mean of mean of frequency of body y-axis jerk (fourth derivative)
"FrequencyBodyAccelerationJerk_mean_Z_mean"  mean of mean of frequency of body z-axis jerk (fourth derivative)
"FrequencyBodyAccelerationJerk_std_X_mean"  standard deviation of mean of frequency of body x-axis jerk (fourth derivative)
"FrequencyBodyAccelerationJerk_std_Y_mean"  standard deviation of mean of frequency of body y-axis jerk (fourth derivative)
"FrequencyBodyAccelerationJerk_std_Z_mean"  standard deviation of mean of frequency of body z-axis jerk (fourth derivative)


Contents of features_info.txt begin below:

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
