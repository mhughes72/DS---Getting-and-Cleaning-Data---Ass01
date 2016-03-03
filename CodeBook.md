# CodeBook - Getting and Cleaning Data
This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.  The session info is also included.

#The data source

Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Data Set Information

##The data

'README.txt'

'features_info.txt': Shows information about the variables used on the feature vector.

'features.txt': List of all features.

'activity_labels.txt': Links the class labels with their activity name.

'train/X_train.txt': Training set.

'train/y_train.txt': Training labels.

'test/X_test.txt': Test set.

'test/y_test.txt': Test labels.

'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

# run_analysis Details

- Requires the plyr library.
- Reads all required data from the UIC directory that should be included with the .R file.
- Creates a new dataset that pairs the Activity and Subject info with the experiment results.
- Renames all columns with appropriate titles.
- Creates a final data set with the Means of all the experimental data and saves it as tidydata.txt.



# Session Info

R version 3.2.3 (2015-12-10)
Platform: x86_64-apple-darwin13.4.0 (64-bit)
Running under: OS X 10.9.5 (Mavericks)

locale:
[1] en_CA.UTF-8/en_CA.UTF-8/en_CA.UTF-8/C/en_CA.UTF-8/en_CA.UTF-8

attached base packages:
[1] grid      stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] plyr_1.8.3    knitr_1.12.3  jpeg_0.1-8    fields_8.3-6  maps_3.1.0    spam_1.3-0    ggplot2_2.0.0 swirl_2.2.21 

loaded via a namespace (and not attached):
 [1] Rcpp_0.12.3      magrittr_1.5     munsell_0.4.3    colorspace_1.2-6 R6_2.1.2         stringr_1.0.0    httr_1.1.0      
 [8] tools_3.2.3      gtable_0.1.2     yaml_2.1.13      digest_0.6.9     crayon_1.3.1     bitops_1.0-6     RCurl_1.95-4.7  
[15] testthat_0.11.0  curl_0.9.5       memoise_1.0.0    stringi_1.0-1    scales_0.3.0    

