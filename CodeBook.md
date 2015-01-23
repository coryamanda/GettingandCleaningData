---
title: "CodeBook.md"
author: "Cory Kind"
date: "Friday, January 23, 2015"
output: html_document
---

**I. Variables**     
**II. Data Source**     
**III. Process of Cleaning Data**     

**I. Variables**

*subject*    
Indicates the ID of the volunteer being observed

*activity*    
Indicates the activity being observed

*time.BodyAcc.Mean.X*    
Domain: time; Body acceleration: X direction (mean)

*time.BodyAcc.Mean.Y*    
Domain: time; Body acceleration: Y direction (mean)

*time.BodyAcc.Mean.Z*    
Domain: time; Body acceleration: Z direction (mean)

*time.BodyAcc.Std.X*    
Domain: time; Body acceleration: X direction (standard deviation)

*time.BodyAcc.Std.Y*    
Domain: time; Body acceleration: Y direction (standard deviation)

*time.BodyAcc.Std.Z*    
Domain: time; Body acceleration: Z direction (standard deviation)

*time.GravityAcc.Mean.X*    
Domain: time; Gravity acceleration: X direction (mean)

*time.GravityAcc.Mean.Y*    
Domain: time; Gravity acceleration: Y direction (mean)

*time.GravityAcc.Mean.Z*    
Domain: time; Gravity acceleration: Z direction (mean)

*time.GravityAcc.Std.X*    
Domain: time; Gravity acceleration: X direction (standard deviation)

*time.GravityAcc.Std.Y*    
Domain: time; Gravity acceleration: Y direction (standard deviation)

*time.GravityAcc.Std.Z*    
Domain: time; Gravity acceleration: Z direction (standard deviation)

*time.BodyAccJerk.Mean.X*    
Domain: time; Body acceleration jerk signal: X direction (mean)

*time.BodyAccJerk.Mean.Y*    
Domain: time; Body acceleration jerk signal: Y direction (mean)

*time.BodyAccJerk.Mean.Z*    
Domain: time; Body acceleration jerk signal: Z direction (mean)

*time.BodyAccJerk.Std.X*    
Domain: time; Body acceleration jerk signal: X direction (standard deviation)

*time.BodyAccJerk.Std.Y*    
Domain: time; Body acceleration jerk signal: Y direction (standard deviation)

*time.BodyAccJerk.Std.Z*    
Domain: time; Body acceleration jerk signal: Z direction (standard deviation)

*time.BodyGyro.Mean.X*    
Domain: time; Body Gyroscope: X direction (mean)

*time.BodyGyro.Mean.Y*    
Domain: time; Body Gyroscope: Y direction (mean)

*time.BodyGyro.Mean.Z*    
Domain: time; Body Gyroscope: Z direction (mean)

*time.BodyGyro.Std.X*    
Domain: time; Body Gyroscope: X direction (standard deviation)

*time.BodyGyro.Std.Y*    
Domain: time; Body Gyroscope: Y direction (standard deviation)

*time.BodyGyro.Std.Z*    
Domain: time; Body Gyroscope: Z direction (standard deviation)

*time.BodyGyroJerk.Mean.X*    
Domain: time; Body Gyroscope jerk signal: X direction (mean)

*time.BodyGyroJerk.Mean.Y*    
Domain: time; Body Gyroscope jerk signal: Y direction (mean)

*time.BodyGyroJerk.Mean.Z*    
Domain: time; Body Gyroscope jerk signal: Z direction (mean)

*time.BodyGyroJerk.Std.X*    
Domain: time; Body Gyroscope jerk signal: X direction (standard deviation)

*time.BodyGyroJerk.Std.Y*    
Domain: time; Body Gyroscope jerk signal: Y direction (standard deviation)

*time.BodyGyroJerk.Std.Z*    
Domain: time; Body Gyroscope jerk signal: Z direction (standard deviation)

*time.BodyAccMag.Mean*    
Domain: time; Body Acceleration magnitude (mean)

*time.BodyAccMag.Std*    
Domain: time; Body Acceleration magnitude (standard deviation)

*time.GravityAccMag.Mean*    
Domain: time; Gravity Acceleration magnitude (mean)

*time.GravityAccMag.Std*    
Domain: time; Gravity Acceleration magnitude (standard deviation)

*time.BodyAccJerkMag.Mean*    
Domain: time; Body Acceleration jerk signal magnitude (mean)

*time.BodyAccJerkMag.Std*    
Domain: time; Body Acceleration jerk signal magnitude (standard deviation)

*time.BodyGyroMag.Mean*    
Domain: time; Body Gyroscope magnitude (mean)

*time.BodyGyroMag.Std*    
Domain: time; Body Gyroscope magnitude (standard deviation)

*time.BodyGyroJerkMag.Mean*    
Domain: time; Gravity Gyroscope jerk signal magnitude (mean)

*time.BodyGyroJerkMag.Std*    
Domain: time; Gravity Gyroscope jerk signal magnitude (standard deviation)

*freq.BodyAcc.Mean.X*    
FFT; Body acceleration: X direction (mean)

*freq.BodyAcc.Mean.Y*    
FFT; Body acceleration: Y direction (mean)

*freq.BodyAcc.Mean.Z*    
FFT; Body acceleration: Z direction (mean)

*freq.BodyAcc.Std.X*    
FFT; Body acceleration: X direction (standard deviation)

*freq.BodyAcc.Std.Y*    
FFT; Body acceleration: Y direction (standard deviation)

*freq.BodyAcc.Std.Z*    
FFT; Body acceleration: Z direction (standard deviation)

*freq.BodyAcc.MeanFreq.X*    
FFT; Body acceleration mean frequency: X direction

*freq.BodyAcc.MeanFreq.Y*    
FFT; Body acceleration mean frequency: Y direction

*freq.BodyAcc.MeanFreq.Z*    
FFT; Body acceleration mean frequency: Z direction

*freq.BodyAccJerk.Mean.X*    
FFT; Body acceleration jerk signal: X direction (mean)

*freq.BodyAccJerk.Mean.Y*    
FFT; Body acceleration jerk signal: Y direction (mean)

*freq.BodyAccJerk.Mean.Z*    
FFT; Body acceleration jerk signal: Z direction (mean)

*freq.BodyAccJerk.Std.X*    
FFT; Body acceleration jerk signal: X direction (standard deviation)

*freq.BodyAccJerk.Std.Y*    
FFT; Body acceleration jerk signal: Y direction (standard deviation)

*freq.BodyAccJerk.Std.Z*    
FFT; Body acceleration jerk signal: Z direction (standard deviation)

*freq.BodyAccJerk.MeanFreq.X*    
FFT; Body acceleration mean frequency: X direction

*freq.BodyAccJerk.MeanFreq.Y*    
FFT; Body acceleration mean frequency: Y direction

*freq.BodyAccJerk.MeanFreq.Z*    
FFT; Body acceleration mean frequency: Z direction

*freq.BodyGyro.Mean.X*    
FFT; Body Gyroscope: X direction (mean)

*freq.BodyGyro.Mean.Y*    
FFT; Body Gyroscope: Y direction (mean)

*freq.BodyGyro.Mean.Z*    
FFT; Body Gyroscope: Z direction (mean)

*freq.BodyGyro.Std.X*    
FFT; Body Gyroscope: X direction (standard deviation)

*freq.BodyGyro.Std.Y*    
FFT; Body Gyroscope: Y direction (standard deviation)

*freq.BodyGyro.Std.Z*    
FFT; Body Gyroscope: Z direction (standard deviation)

*freq.BodyGyro.MeanFreq.X*    
FFT; Body Gyroscope mean frequency: X direction

*freq.BodyGyro.MeanFreq.Y*    
FFT; Body Gyroscope mean frequency: Y direction

*freq.BodyGyro.MeanFreq.Z*    
FFT; Body Gyroscope mean frequency: Z direction

*freq.BodyAccMag.Mean*    
FFT; Body Acceleration magnitude (mean)

*freq.BodyAccMag.Std*    
FFT; Body Acceleration magnitude (standard deviation)

*freq.BodyAccMag.MeanFreq*    
FFT; Body Acceleration magnitude mean frequency

*freq.BodyAccJerkMag.Mean*    
FFT; Body Acceleration jerk signal magnitude (mean)

*freq.BodyAccJerkMag.Std*    
FFT; Body Acceleration jerk signal magnitude (standard deviation)

*freq.BodyAccJerkMag.MeanFreq*    
FFT; Body Acceleration jerk signal magnitude mean frequency

*freq.BodyGyroMag.Mean*    
FFT; Body Gyroscope magnitude (mean)

*freq.BodyGyroMag.Std*    
FFT; Body Gyroscope magnitude (standard deviation)

*freq.BodyGyroMag.MeanFreq*    
FFT; Body Gyroscope magnitude mean frequency

*freq.BodyGyroJerkMag.Mean*    
FFT; Body Gyroscope jerk signal magnitude (mean)

*freq.BodyGyroJerkMag.Std*    
FFT; Body Gyroscope jerk signal magnitude (standard deviation)

*freq.BodyGyroJerkMag.MeanFreq*    
FFT; Body Gyroscope jerk signal magnitude mean frequency

*angle.tBodyAccMean.gravity*    
Domain: time; Angle between Body Acceleration mean and gravity mean

*angle.tBodyAccJerkMean.gravityMean*    
Domain: time; Angle between Body Acceleration jerk signal mean and gravity mean

*angle.tBodyGyroMean.gravityMean*    
Domain: time; Angle between Body Gyroscope mean and gravity mean

*angle.tBodyGyroJerkMean.gravityMean*    
Domain: time; Angle between Body Gyroscope jerk signal mean and gravity mean

*angle.X.gravityMean*    
Domain: Angle; gravity: X direction (mean)

*angle.Y.gravityMean*    
Domain: Angle; gravity: Y direction (mean)

*angle.Z.gravityMean*    
Domain: Angle; gravity: Z direction (mean)


**II. Data Source**

*Description of Data*     
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

*Data source*           
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

**III. Process of Loading and Cleaning Data**

Steps for cleaning/transforming the data are as follows:

- Download data from the web and unzip
- Review the list returned, which shows the full contents of the file to help users become familiar with it
- Specify the source of the downloaded file as "startpath"
- Starting from the startpath location, the script will upload the following datasets: features, X and y test sets, X and y train sets, and subject test and train information; Inertial signals files are ignored.
- The data is combined, with type, subject, and activity variables added to each observation
- Any variables referencing mean or std (standard deviation) are used to create a new set, entitled lessData. The labeling information comes from the file features.txt. The three added variables are also included.
- Descriptive activity values are added based on the mapping provided in activity_labels.txt
- Column names are removed of illegal characters. In some cases, periods are added and mean and std are capitalized to improve general readability. The variables erroneously titled "BodyBody" are corrected. t and f are expanded to "time" and "freq" for readability.
- The dataset is tidied according to the principles laid out in Tidy Data, by Hadley Wickham. (http://www.jstatsoft.org/v59/i10/) There are 180 total observations (simplified from 10299). Each value represents the mean of one measure of one subject doing one activity (i.e., Subject 3 Walking).
- Additional information about the details of each variable is listed above, drawn from features_info.txt
