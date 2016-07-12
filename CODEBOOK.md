# Code Book

## Breif Description

The structure of the names of the variables are mostly the same as the original dataset. However, while combining the train and test datasets, the subject ID and the activity (i.e, the label, e.g - WALKING) were added to the set of variables. 

The variables are renamed in such a manner that all the names are descriptive and convey a clear meaning. Also, special characters in variable names are removed if it did not make sense.

## New Variables

The two newly added variables, Subject ID (takes a number between 1 and 30) denotes the subject and the Activity label which takes the value one among WALKING, WALKING_UPSTAIRS, WALING_DOWNSTAIRS, SITTING, STANDING or LAYING. The other variables are as in the original dataset except for the change in the variable names.

## Modifications to Original Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TIME_acceleration-XYZ and TIME_gyroscope-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TIME_body_acceleration-XYZ and TIME_gravity_acceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TIME_body_acceleration_jerk-XYZ and TIME_body_gyroscope_jerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TIME_body_acceleration_magnitude_, TIME_gravity_acceleration_magnitude_, TIME_body_acceleration_jerk_magnitude_, TIME_body_gyroscope_magnitude, TIME_body_gyroscope_jerk_magnitude_). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

TIME_body_acceleration-XYZ  
TIME_gravity_acceleration-XYZ  
TIME_body_acceleration_jerk-XYZ  
TIME_body_gyroscope-XYZ   
TIME_bod_gyroscope_jerk-XYZ  
TIME_body_acceleration_magnitude_   
TIME_gravity_acceleration_magnitude_  
TIME_body_acceleration_jerk_magnitude_   
TIME_body_gyroscope_magnitude_  
TIME_body_gyroscope_jerk_magnitude_  
FREQ_body_acceleration-XYZ  
FREQ_body_acceleration_jerk-XYZ  
FREQ_body_gyroscope-XYZ  
FREQ_body_acceleration_magnitude_  
FREQ_body_acceleration_jerk_magnitude_  
FREQ_body_gyroscope_magnitude_  
FREQ_body_gyroscope_jerk_magnitude_     

The set of variables that were estimated from these signals are: 

mean: Mean value  
std: Standard deviation  
mad: Median absolute deviation  
max: Largest value in array  
min: Smallest value in array  
sma: Signal magnitude area  
energy: Energy measure. Sum of the squares divided by the number of values.  
iqr: Interquartile range  
entropy: Signal entropy  
arcoeff: Autorregresion coefficients with Burg order equal to 4  
correlation: correlation coefficient between two signals  
maxInds: index of the frequency component with largest magnitude  
meanFreq: Weighted average of the frequency components to obtain a mean frequency  
skewness: skewness of the frequency domain signal  
kurtosis: kurtosis of the frequency domain signal  
bandsenergy: Energy of a frequency interval within the 64 bins of the FFT of each window.  
angle: Angle between to vectors.


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean

TIME_body_Acceleration_Mean

TIME_body_Acceleration_jerkMean

TIME_body_gyroscope_Mean

TIME_body_gyroscope_jerkMean
