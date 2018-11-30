library(dplyr)

##set working directory
##path <- getwd()
##dir.create(paste(path,"/GettingAndCleaningDataProject",sep=""))
##setwd("GettingandCleaningDataProject")

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
trainingValues <- read.table(file.path(dataPath, "train", "X_train.txt"))
trainingActivity <- read.table(file.path(dataPath, "train", "y_train.txt"))

##read test data
testSubjects <- read.table(file.path(dataPath, "test", "subject_test.txt"))
testValues <- read.table(file.path(dataPath, "test", "X_test.txt"))
testActivity <- read.table(file.path(dataPath, "test", "y_test.txt"))

##combine files
trainingSet <- cbind(trainingSubjects,trainingValues,trainingActivity)
testSet <- cbind(testSubjects,testValues,testActivity)
allActivity <- rbind(trainingSet,testSet)

##clear memory
rm(trainingActivity,trainingSet,trainingSubjects,trainingValues,testActivity,testSet,testValues,testSubjects)

##reading activity file
activities <- read.table(file.path(dataPath, "activity_labels.txt"))
colnames(activities) <- c("activityId", "activityLabel")

##reading values file
features <- read.table(file.path(dataPath, "features.txt"), as.is = TRUE)

##putting column name into combined file
colnames(allActivity) <- c("subject", features[, 2], "activity")

##preparing to remove unnecessary columns
columnsToKeep <- grepl("subject|activity|mean|std", colnames(allActivity))
allActivity <- allActivity[, columnsToKeep]

##updating activity code to description
allActivity$activity <- factor(allActivity$activity, levels = activities[,1], labels = activities[,2])

##tidying column names
allActivityCols <- names(allActivity)
allActivityCols <- gsub("[\\(\\)-]","",allActivityCols)
colnames(allActivity) <- allActivityCols

##calculate mean value
columnsToCalculate <- grepl("mean|std", colnames(allActivity))
allActivityMeans <- allActivity %>% 
        group_by(subject, activity) %>%
        summarise(mean(columnsToCalculate))

##writing tidy file
write.table(allActivityMeans, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)


