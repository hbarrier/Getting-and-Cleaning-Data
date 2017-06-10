# Code Book

## Origin of the data
The data used in this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone [1], available on the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#) web site.

This data is referred to as "source data" in the following codebooks.

The actual dataset can be retrieved from the following URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
Details about the data available in this initial dataset is available in the "feature.txt" available in above zip file. It shall not be repeated here, please refer to it as needed.
Only the variables available in the two datasets produced as part of this "Getting and Cleaning data" project are detailed in the Codebooks below.

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

## Codebook for the first dataset

**Remark**: 
* "Jerk" refers to the rate of change of acceleration; that is, the derivative of acceleration with respect to time (https://en.wikipedia.org/wiki/Jerk_(physics) for further info).
* further information on the Fast Fourier Transform (FFT) can be found here: https://en.wikipedia.org/wiki/Fast_Fourier_transform
* in the variable names:
  * t refers to time
  * f refers to frequency
  * Acc refers to Acceleration
  * Gyro refers to Gyroscopic measures
  * Mag refers to Magnitude

Those abbreviations were voluntarily kept to avoid making variable names too long and painful to further manipulate. 


Variable Name | Position | Description | Values or Explanations
--------------|----------|-------------|------------------------
SubjectId|1|Unique identified of the subject on which the data was observed|Integer, from 1 to 30 as 30 persons participated in the experiment
Activity|2|Name of the activity during which data was collected|Factor, with 6 levels (unordered): WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, , STANDING, LAYING
tBodyAcc.mean_X|3|Average of the Body Accelaration sampled over time, in the X direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyAcc.mean_Y|4|Average of the Body Accelaration sampled over time, in the Y direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyAcc.mean_Z|5|Average of the Body Accelaration sampled over time, in the Z direction|Numeric. Variable is normalized and bounded within [-1,1]
tGravityAcc.mean_X|6|Average of the Gravity Accelaration sampled over time, in the X direction|Numeric. Variable is normalized and bounded within [-1,1]
tGravityAcc.mean_Y|7|Average of the Gravity Accelaration sampled over time, in the Y direction|Numeric. Variable is normalized and bounded within [-1,1]
tGravityAcc.mean_Z|8|Average of the Gravity Accelaration sampled over time, in the Z direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyAccJerk.mean_X|9|Average of the Jerk of the Body Accelaration sampled over time, in the X direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyAccJerk.mean_Y|10|Average of the Jerk of the Body Accelaration sampled over time, in the Y direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyAccJerk.mean_Z|11|Average of the Jerk of the Body Accelaration sampled over time, in the Z direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyro.mean_X|12|Average of the Gyroscopic signal sampled over time, in the X direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyro.mean_Y|13|Average of the Gyroscopic signal sampled over time, in the Y direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyro.mean_Z|14|Average of the Gyroscopic signal sampled over time, in the Z direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyroJerk.mean_X|15|Average of the Jerk of the Gyroscopic signal sampled over time, in the X direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyroJerk.mean_Y|16|Average of the Jerk of the Gyroscopic signal sampled over time, in the Y direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyroJerk.mean_Z|17|Average of the Jerk of the Gyroscopic signal sampled over time, in the Z direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyAccMag.mean|18|Average magnitude of body acceleration sampled over time|Numeric. Variable is normalized and bounded within [-1,1]
tGravityAccMag.mean|19|Average magnitude of gravity acceleration sampled over time|Numeric. Variable is normalized and bounded within [-1,1]
tBodyAccJerkMag.mean|20|Average magnitude of the Jerk of the body acceleration sampled over time|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyroMag.mean|21|Average magnitude of the Gyroscopic signal sampled over time|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyroJerkMag.mean|22|Average magnitude of the Jerk of the Gyroscopic signal sampled over time|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAcc.mean_X|23|Average body acceleration in the X direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAcc.mean_Y|24|Average body acceleration in the Y direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAcc.mean_Z|25|Average body acceleration in the Z direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAccJerk.mean_X|26|Average Jerk of the body acceleration in the X direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAccJerk.mean_Y|27|Average Jerk of the body acceleration in the Y direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAccJerk.mean_Z|28|Average Jerk of the body acceleration in the Z direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyGyro.mean_X|29|Average gyroscopig signal in the X direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyGyro.mean_Y|30|Average gyroscopig signal in the Y direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyGyro.mean_Z|31|Average gyroscopig signal in the Z direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAccMag.mean|32|Average magnitude of the body acceleration, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAccJerkMag.mean|33|Average magnitude of Jerk of the body acceleration, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyGyroMag.mean|34|Average magnitude of the Gyroscopic signal, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyGyroJerkMag.mean|35|Average magnitude of the Jerk of the Gyroscopic signal, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
tBodyAcc.std_X|36|Standard deviation of the Body Accelaration sampled over time, in the X direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyAcc.std_Y|37|Standard deviation of the Body Accelaration sampled over time, in the Y direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyAcc.std_Z|38|Standard deviation of the Body Accelaration sampled over time, in the Z direction|Numeric. Variable is normalized and bounded within [-1,1]
tGravityAcc.std_X|39|Standard deviation of the Gravity Accelaration sampled over time, in the X direction|Numeric. Variable is normalized and bounded within [-1,1]
tGravityAcc.std_Y|40|Standard deviation of the Gravity Accelaration sampled over time, in the Y direction|Numeric. Variable is normalized and bounded within [-1,1]
tGravityAcc.std_Z|41|Standard deviation of the Gravity Accelaration sampled over time, in the Z direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyAccJerk.std_X|42|Standard deviation of the Jerk of the Body Accelaration sampled over time, in the X direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyAccJerk.std_Y|43|Standard deviation of the Jerk of the Body Accelaration sampled over time, in the Y direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyAccJerk.std_Z|44|Standard deviation of the Jerk of the Body Accelaration sampled over time, in the Z direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyro.std_X|45|Standard deviation of the Gyroscopic signal sampled over time, in the X direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyro.std_Y|46|Standard deviation of the Gyroscopic signal sampled over time, in the Y direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyro.std_Z|47|Standard deviation of the Gyroscopic signal sampled over time, in the Z direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyroJerk.std_X|48|Standard deviation of the Jerk of the Gyroscopic signal sampled over time, in the X direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyroJerk.std_Y|49|Standard deviation of the Jerk of the Gyroscopic signal sampled over time, in the Y direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyroJerk.std_Z|50|Standard deviation of the Jerk of the Gyroscopic signal sampled over time, in the Z direction|Numeric. Variable is normalized and bounded within [-1,1]
tBodyAccMag.std|51|Standard deviation magnitude of body acceleration sampled over time|Numeric. Variable is normalized and bounded within [-1,1]
tGravityAccMag.std|52|Standard deviation magnitude of gravity acceleration sampled over time|Numeric. Variable is normalized and bounded within [-1,1]
tBodyAccJerkMag.std|53|Standard deviation magnitude of the Jerk of the body acceleration sampled over time|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyroMag.std|54|Standard deviation magnitude of the Gyroscopic signal sampled over time|Numeric. Variable is normalized and bounded within [-1,1]
tBodyGyroJerkMag.std|55|Standard deviation magnitude of the Jerk of the Gyroscopic signal sampled over time|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAcc.std_X|56|Standard deviation body acceleration in the X direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAcc.std_Y|57|Standard deviation body acceleration in the Y direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAcc.std_Z|58|Standard deviation body acceleration in the Z direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAccJerk.std_X|59|Standard deviation Jerk of the body acceleration in the X direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAccJerk.std_Y|60|Standard deviation Jerk of the body acceleration in the Y direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAccJerk.std_Z|61|Standard deviation Jerk of the body acceleration in the Z direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyGyro.std_X|62|Standard deviation gyroscopig signal in the X direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyGyro.std_Y|63|Standard deviation gyroscopig signal in the Y direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyGyro.std_Z|64|Standard deviation gyroscopig signal in the Z direction, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAccMag.std|65|Standard deviation magnitude of the body acceleration, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyAccJerkMag.std|66|Standard deviation magnitude of Jerk of the body acceleration, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyGyroMag.std|67|Standard deviation magnitude of the Gyroscopic signal, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]
fBodyGyroJerkMag.std|68|Standard deviation magnitude of the Jerk of the Gyroscopic signal, represented in a frequency domain (hence the f) following application of a Fast Fourier Transform (FFT) algorithm|Numeric. Variable is normalized and bounded within [-1,1]


## Codebook for the second, summarized dataset

This Codebook contains the exact same name of variables as the first one. 
SubjectId and Activity are the same variables as above, no transformation has been applied.

Nevertheless, it should be noticed that for all other variables, the measure available in the summarized dataset is equal to the mean of the same variable in above dataset, for each combination of (SubjectId, Activity). 

As per table below, for instance, the first dataset contains 95 measurements for the Walking activity for SubjectId 1. 
The Avg_data dataset has for each variable for Subject 1 / Walking the mean of those 95 values.

This table (obtained by running *table(MSd_data$SubjectId, MSd_data$Activity)* in R) provides the number of measures averaged for each subject and activity.

Subject Id|WALKING|WALKING_UPSTAIRS|WALKING_DOWNSTAIRS|SITTING|STANDING|LAYING
----------|-------|----------------|------------------|-------|--------|------
1|95|53|49|47|53|50|
2|59|48|47|46|54|48
3|58|59|49|52|61|62
4|60|52|45|50|56|54
5|56|47|47|44|56|52
6|57|51|48|55|57|57
7|57|51|47|48|53|52
8|48|41|38|46|54|54
9|52|49|42|50|45|50
10|53|47|38|54|44|58
11|59|54|46|53|47|57
12|50|52|46|51|61|60
13|57|55|47|49|57|62
14|59|54|45|54|60|51
15|54|48|42|59|53|72
16|51|51|47|69|78|70
17|61|48|46|64|78|71
18|56|58|55|57|73|65
19|52|40|39|73|73|83
20|51|51|45|66|73|68
21|52|47|45|85|89|90
22|46|42|36|62|63|72
23|59|51|54|68|68|72
24|58|59|55|68|69|72
25|74|65|58|65|74|73
26|59|55|50|78|74|76
27|57|51|44|70|80|74
28|54|51|46|72|79|80
29|53|49|48|60|65|69
30|65|65|62|62|59|70

