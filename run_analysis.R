install.packages("dplyr")
install.packages("sqldf")

library(dplyr)
library(sqldf)

##set working directory
##E://User//Documents//Getting_Cleaning_Data_Project/
dir.create("./GettingAndCleaningDataProject")
setwd("./GettingAndCleaningDataProject")

##declare url and zip file name
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"

##download file
if(!file.exists(zipFile)){
       download.file(url,zipFile,method = "curl")
}

##unzip file
dataPath <- "UCI HAR Dataset"
if(!file.exists(dataPath)){
       unzip(zipFile)
}

##read training data
trainingSubjects <- read.table(file.path(dataPath, "train", "subject_train.txt"))
##7352 obs.of 1 variable
trainingX <- read.table(file.path(dataPath, "train", "X_train.txt"))
##7352 obs.of 561 variable
trainingY <- read.table(file.path(dataPath, "train", "y_train.txt"))
##7352 obs.of 1 variable

##read test data
testSubjects <- read.table(file.path(dataPath, "test", "subject_test.txt"))
##2947 obs.of 1 variable
testX <- read.table(file.path(dataPath, "test", "X_test.txt"))
##2947 obs.of 561 variable
testY <- read.table(file.path(dataPath, "test", "y_test.txt"))
##2947 obs.of 1 variable

##combine files
trainingSet <- cbind(trainingSubjects,trainingX,trainingY)
testSet <- cbind(testSubjects,testX,testY)
allActivity <- rbind(trainingSet,testSet)

##reading activity description file
labels <- read.table(file.path(dataPath, "activity_labels.txt"),header = FALSE)
colnames(labels) <- c("Id", "Label")

##reading measurements file
features <- read.table(file.path(dataPath, "features.txt"),header = FALSE,stringsAsFactors = FALSE)

##putting column name into combined file
colnames(allActivity) <- c("subject", features[, 2], "label")

##preparing to remove unnecessary columns
columnsToKeep <- grepl("subject|label|mean|std", colnames(allActivity))
allActivity <- allActivity[, columnsToKeep]

##updating activity code to description
allActivityLabel <- sqldf("select allActivity.*, labels.Label as labelDesc 
          from allActivity
             inner join labels
             on allActivity.label = labels.Id")

##tidying column names
allActivityCols <- names(allActivityLabel)
allActivityCols <- gsub("[\\(\\)-]","",allActivityCols)
colnames(allActivityLabel) <- allActivityCols

##calculate mean value
columnsToCalculate <- grepl("mean|std", colnames(allActivityLabel))
allActivityMeans <- allActivityLabel %>% 
        group_by(subject, label,labelDesc) %>%
        summarise_all(funs(mean))

##writing tidy file
write.table(allActivityMeans, "tidy_data.txt", row.names = FALSE)


