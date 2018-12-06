# Getting and Cleaning Data - Course Project
 The goal is to prepare tidy data that can be used for later analysis. The submitted run_analysis.R does the following.
    1-Merges the training and the test sets to create one data set.
    2-Extracts only the measurements on the mean and standard deviation for each measurement.
    3-Uses descriptive activity names to name the activities in the data set
    4-Appropriately labels the data set with descriptive variable names.
    5-From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The following is the detailed steps which the submitted code works.
    
1.setting working directory</br>
2.declare url and zip file name</br>
3.download file</br>
4.unzip file</br>
5.read training data</br>
6.read test data</br>
7.combine files</br>
7.reading activity description file</br>
8.reading measurements descriptioin file</br>
9.putting column name into combined file</br>
10.preparing to remove unnecessary columns</br>
11.updating activity code to description</br>
12.tidying column names</br>
13.calculate mean value</br>
14.writing tidy file</br>
</br>
End result tidy_data is in repo.

