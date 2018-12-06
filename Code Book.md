<H1>Data Set Information:</H1>

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The dataset is a tidy dataset has been prepared based on two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

<H1> Code Book </H1>

This code book summarizes the resulting data fields in tidy.txt.

<H1> Identifier </H1>

subject - The ID of the test subject</br>
activity - The type of activity performed when the corresponding measurements were taken</br>
Measurements - The type of taken measurements</br>

<H1> Activity Labels </H1>
WALKING : subject was walking during the test</br>
WALKING_UPSTAIRS : subject was walking up a staircase during the test</br>
WALKING_DOWNSTAIRS : subject was walking down a staircase during the test</br>
SITTING : subject was sitting during the test</br>
STANDING : subject was standing during the test</br>
LAYING : subject was laying down during the test</br>

<H1>Measurements </H1>
<ol>
  <li>tBodyAccmeanX </li>
  <li>tBodyAccmeanY </li>
  <li>tBodyAccmeanZ </li>
  <li>tBodyAccstdX </li>
  <li>tBodyAccstdY </li>
  <li>tBodyAccstdZ </li>
  <li>tGravityAccmeanX </li>
  <li>tGravityAccmeanY </li>
  <li>tGravityAccmeanZ </li>
  <li>tGravityAccstdX </li>
  <li>tGravityAccstdY </li>
  <li>tGravityAccstdZ </li>
  <li>tBodyAccJerkmeanX </li>
  <li>tBodyAccJerkmeanY </li>
  <li>tBodyAccJerkmeanZ </li>
  <li>tBodyAccJerkstdX </li>
  <li>tBodyAccJerkstdY </li>
  <li>tBodyAccJerkstdZ </li>
  <li>tBodyGyromeanX </li>
  <li>tBodyGyromeanY </li>
  <li>tBodyGyromeanZ </li>
  <li>tBodyGyrostdX </li>
  <li>tBodyGyrostdY </li>
  <li>tBodyGyrostdZ </li>
  <li>tBodyGyroJerkmeanX </li>
  <li>tBodyGyroJerkmeanY </li>
  <li>tBodyGyroJerkmeanZ </li>
  <li>tBodyGyroJerkstdX </li>
  <li>tBodyGyroJerkstdY </li>
  <li>tBodyGyroJerkstdZ </li>
  <li>tBodyAccMagmean </li>
  <li>tBodyAccMagstd </li>
  <li>tGravityAccMagmean </li>
  <li>tGravityAccMagstd </li>
  <li>tBodyAccJerkMagmean </li>
  <li>tBodyAccJerkMagstd </li>
  <li>tBodyGyroMagmean </li>
  <li>tBodyGyroMagstd </li>
  <li>tBodyGyroJerkMagmean </li>
  <li>tBodyGyroJerkMagstd </li>
  <li>fBodyAccmeanX </li>
  <li>fBodyAccmeanY </li>
  <li>fBodyAccmeanZ </li>
  <li>fBodyAccstdX </li>
  <li>fBodyAccstdY </li>
  <li>fBodyAccstdZ </li>
  <li>fBodyAccmeanFreqX </li>
  <li>fBodyAccmeanFreqY </li>
  <li>fBodyAccmeanFreqZ </li>
  <li>fBodyAccJerkmeanX </li>
  <li>fBodyAccJerkmeanY </li>
  <li>fBodyAccJerkmeanZ </li>
  <li>fBodyAccJerkstdX </li>
  <li>fBodyAccJerkstdY </li>
  <li>fBodyAccJerkstdZ </li>
  <li>fBodyAccJerkmeanFreqX </li>
  <li>fBodyAccJerkmeanFreqY </li>
  <li>fBodyAccJerkmeanFreqZ </li>
  <li>fBodyGyromeanX </li>
  <li>fBodyGyromeanY </li>
  <li>fBodyGyromeanZ </li>
  <li>fBodyGyrostdX </li>
  <li>fBodyGyrostdY </li>
  <li>fBodyGyrostdZ </li>
  <li>fBodyGyromeanFreqX </li>
  <li>fBodyGyromeanFreqY </li>
  <li>fBodyGyromeanFreqZ </li>
  <li>fBodyAccMagmean </li>
  <li>fBodyAccMagstd </li>
  <li>fBodyAccMagmeanFreq </li>
  <li>fBodyBodyAccJerkMagmean </li>
  <li>fBodyBodyAccJerkMagstd </li>
  <li>fBodyBodyAccJerkMagmeanFreq </li>
  <li>fBodyBodyGyroMagmean </li>
  <li>fBodyBodyGyroMagstd </li>
  <li>fBodyBodyGyroMagmeanFreq </li>
  <li>fBodyBodyGyroJerkMagmean </li>
  <li>fBodyBodyGyroJerkMagstd </li>
  <li>fBodyBodyGyroJerkMagmeanFreq</li>
</ol>


