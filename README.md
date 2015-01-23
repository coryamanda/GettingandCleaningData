---
title: "README.md"
author: "Cory Kind"
date: "Friday, January 23, 2015"
output: html_document
---


**Source List**

- run_analysis.R: making tidy data from raw data (means of means and standard deviations)
- CodeBook.md: describes variables, links to raw data, and process of loading and cleaning data

**Information about Raw Data**

The below is taken from the file's README, please refer to that for additional information:


Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


**How to Use run_analysis.R**

- First, set the variable startpath in the script to your working directory OR the place where the zip file was downloaded. An example is provided but commented out. If you do not do this, the upload will throw an error.
- If you have not yet downloaded any of the data files, you can simply run the syntax. You will find the folder "UCI HAR Dataset" in your working directory. All of the raw data is in that folder, along with the tidy dataset (entitled tidyDataSet.txt).
- If you have already downloaded the file and would like to save time, comment out the download.file function. Set startpath to the place where the zip file was downloaded.

**III. Process of Loading and Cleaning Data**

The script does the following:

- Downloads data from the web and unzips file
- Returns full contents of the file to help users become familiar with it
- Uploads the following datasets: features, X and y test sets, X and y train sets, and subject test and train information; Inertial signals files are ignored.
- Combines data, with type, subject, and activity variables added to each observation
- Creates a new data set (lessData) including any variables referencing mean or std (standard deviation). The labeling information comes from the file features.txt. The three added variables are also included.
- Adds descriptive activity values based on the mapping provided in activity_labels.txt
- Removes illegal characters and errors from column names. In some cases, limited formatting is done to improve readability.
- Creates a tidy set of means according to the principles laid out in Tidy Data, by Hadley Wickham. (http://www.jstatsoft.org/v59/i10/) The tidy set includes 180 total observations (simplified from 10299). Each value represents the mean of one measure of one subject doing one activity (i.e., Subject 3 Walking).
- Exports tidy data to the unzipped file


