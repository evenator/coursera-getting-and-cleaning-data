Cleaned Human Activity Recognition Using Smartphones Dataset
============================================================

Data cleaning by Edward Venator, performed on original data from

Human Activity Recognition Using Smartphones Dataset

Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

Smartlab - Non Linear Complex Systems Laboratory

DITEN - Università degli Studi di Genova.

Via Opera Pia 11A, I-16145, Genoa, Italy.

activityrecognition@smartlab.ws

www.smartlab.ws

-------------------
The UCI HAR Dataset
-------------------

This dataset is not complete until the original UCI Dataset is appropriately
extracted and put into its directory structure, as described in step 1 of the
'Instructions for Running this Code' section of the README.

As of June 21, 2014, this data was available at 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

--------------------------------
From the UCI HAR Dataset README:
--------------------------------

> The experiments have been carried out with a group of 30 volunteers within an 
> age bracket of 19-48 years. Each person performed six activities (WALKING, 
> WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a 
> smartphone (Samsung Galaxy S II) on the waist. Using its embedded 
> accelerometer and gyroscope, we captured 3-axial linear acceleration and 
> 3-axial angular velocity at a constant rate of 50Hz. The experiments have been
> video-recorded to label the data manually. The obtained dataset has been 
> randomly partitioned into two sets, where 70% of the volunteers was selected 
> for generating the training data and 30% the test data. 
>
> The sensor signals (accelerometer and gyroscope) were pre-processed by 
> applying noise filters and then sampled in fixed-width sliding windows of 2.56 
> sec and 50% overlap (128 readings/window). The sensor acceleration signal, 
> which has gravitational and body motion components, was separated using a 
> Butterworth low-pass filter into body acceleration and gravity. The 
> gravitational force is assumed to have only low frequency components, 
> therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a 
> vector of features was obtained by calculating variables from the time and 
> frequency domain. See 'features_info.txt' for more details. 

For more information on the UCI HAR Dataset, see the README.txt file in the UCI 
HAR Dataset.

-----------------------------------------------------
This dataset includes the following additional files:
-----------------------------------------------------

- 'README.md' - Description of run_analysis.R, instructions for use, and 
    license.  
- 'CodeBook.md' - This file. Describes data processed by run_analysis.R.
- 'run_analysis.R' - Performs processing on the UCI HAR Dataset to create a new 
    dataset in tidy.txt
- 'tidy.txt' - Created by run_analysis.R. Contains cleaned and processed data 
    described below.

----------------
Data in tidy.txt
----------------

tidy.txt is a space-delimited text file with 68 columns. The first row is a 
header containing the column names. Each of the remaining rows corresponds to
statistics for a group of the original UCI HAR Dataset, split by subject and 
activity type, so each group contains all measurements of a subject performing
a specific activity. 

The columns of the tidy dataset are as follows:

- subject - Integer index referring to the test subject
- activity - Description of the activity performed
- tBodyAcc.[mean/std].[XYZ] - Mean over all [means/standard deviations] of the
    [XYZ] component of body acceleration in the group.
- tGravityAcc.[mean/std].[XYZ] - Mean over all [means/standard deviations] of 
    the [XYZ] component of gravity acceleration in the group.
- tBodyAccJerk.[mean/std].[XYZ] - Mean over all [means/standard deviations] of
    the [XYZ] component of body jerk (from accelerometer data) in the group.
- tBodyGyro.[mean/std].[XYZ] - Mean over all [means/standard deviations] of the
    [XYZ] component of body rotation in the group.
- tBodyGyroJerk.[mean/std].[XYZ] - Mean over all [means/standard deviations] of
    the [XYZ] compoentn of body jerk (from gyroscope data) in the group.
- tBodyAccMag.[mean/std] - Mean over all [means/standard deviations] of the 
    magnitude of body acceleration in the group.
- tGravityAccMag.[mean/std] - Mean over all the [means/standard deviations] of
    the magnitude of gravity acceleration in the group.
- tBodyAccJerkMag.[mean/std] - Mean over all the [means/standard deviations] of
    the magnitude of body jerk (from accelerometer data) in the group.
- tBodyGyroMag.[mean/std] - Mean over all the [means/standard deviations] of
    the magnitude of body rotation in the group.
- tBodyGyroJerkMag.[mean/std] - Mean over all the [means/standard deviations] of
    the magnitude of jerk (from gyroscope data) in the group.
- fBodyAcc.[mean/std].[XYZ] - Mean over all the [means/standard deviations] of
    the fourier transform of the [XYZ] component of body acceleration in the 
    group.
- fBodyAccJerk.[mean/std].[XYZ] - Mean over all the [means/standard deviations] 
    of the fourier transform of the [XYZ] component of body jerk (from 
    accelerometer data) in the group. 
- fBodyGyro.[mean/std].[XYZ] - Mean over all the [means/standard deviations] of
    the fourier transform of the [XYZ] component of body rotation in the group.
- fBodyAccMag.[mean/std] - Mean over all the [means/standard deviations] of
    the fourier transform of the magnitude of body acceleration in the group.
- fBodyAccJerkMag.[mean/std] - Mean over all the [means/standard deviations] of
    the fourier transform of the magnitude of body jerk (from accelerometer data)
    in the group. 
- fBodyGyroMag.[mean/std] - Mean over all the [means/standard deviations] of
    the fourier transform of the magnitude of body rotation in the group. 
- fBodyGyroJerkMag.[mean/std] - Mean over all the [means/standard deviations] of
    the fourier transform of the magnitude of body jerk (from gyroscope data) in 
    the group. 

As in the original UCI HAR Dataset, all features are normalized and bounded 
within [-1,1]. No additional scaling or normalization was performed.

--------
License
--------
Use of the UCI HAR Dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The UCI HAR Dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

UCI HAR Dataset copyright Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

Use of this analsys script is governed by the License described in README.md