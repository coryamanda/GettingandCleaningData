library(downloader)
library(dplyr)
library(stringr)
library(reshape2)

#Use this code to download data, comment out if you already have it
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download(fileUrl, dest="SmartphoneData.zip", mode="wb")
unzip("SmartphoneData.zip")

#Returns a full list of the files in the folder so you can see what you have
unzip("SmartphoneData.zip", list=TRUE)

#User sets start path to his or her normal working directory - the script
#will not work unless it is set, so I've provided an example but commented it out
#startPath = "C:/Users/ckind/Documents/Studying"

#Reading in files
setwd(paste(startPath,"/UCI HAR Dataset", sep=""))
features <- read.table("features.txt")

setwd(paste(startPath,"/UCI HAR Dataset/test", sep=""))
xtest <- read.table("X_test.txt")
xtest$type <- "Test"
subject_test <- read.table("subject_test.txt", col.names = "subject")
ytest <- read.table("y_test.txt", col.names =  "activity")
xtest <- cbind(xtest, ytest, subject_test)
rm(ytest, subject_test)

setwd(paste(startPath,"/UCI HAR Dataset/train", sep=""))
xtrain <- read.table("X_train.txt")
xtrain$type <- "Train"
subject_train <- read.table("subject_train.txt", col.names = "subject")
ytrain <- read.table("y_train.txt", col.names =  "activity")
xtrain <- cbind(xtrain, ytrain, subject_train)
rm(ytrain, subject_train)

combo <- rbind(xtest, xtrain)
rm(xtest, xtrain)

#Determining which columns to pull and creates a smaller dataset, keeping the three that were added
meanOrStd <- grepl("mean", features$V2, ignore.case = TRUE) | grepl("std", features$V2, ignore.case = TRUE)
lessData <- combo[,c(meanOrStd, TRUE, TRUE, TRUE)]

#Naming the activities in the dataset
lessData$activity <- mapvalues(lessData$activity, from=c(1, 2, 3, 4, 5, 6), to=c("WALKING", "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))

#Relabeling and cleaning column titles
editedNames <- as.character(features$V2[meanOrStd])
editedNames <- str_replace_all(editedNames,fixed("()"),"")
editedNames <- str_replace_all(editedNames,fixed("("),".")
editedNames <- str_replace_all(editedNames,fixed(")"),"")
editedNames <- str_replace_all(editedNames,fixed("-"),".")
editedNames <- str_replace_all(editedNames,fixed(","),".")
editedNames <- str_replace_all(editedNames,fixed("mean"),"Mean")
editedNames <- str_replace_all(editedNames,fixed("std"),"Std")
editedNames <- str_replace_all(editedNames,fixed("BodyBody"),"Body")
rm(features)

for (i in 1:length(editedNames)) {
        len = nchar(editedNames[i])
        if (substr(editedNames[i], 1, 1) == "f") {
                editedNames[i] = paste("freq.",substr(editedNames[i],2,len), sep="")
        }
        else if (substr(editedNames[i], 1, 1) == "t") {
                editedNames[i] = paste("time.",substr(editedNames[i],2,len), sep="")
        }
}
names(lessData)[1:length(editedNames)] <- editedNames
rm(i, len)

#Creating tidy dataset
setwd(paste(startPath,"/UCI HAR Dataset", sep=""))
tidied <- lessData %>% group_by(subject, activity, add=TRUE) %>% summarise_each(funs(mean), vars=-type)

#Exporting tidy dataset
write.table(tidied,file="tidyDataSet.txt", row.name=FALSE)

