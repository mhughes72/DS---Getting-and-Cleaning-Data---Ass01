
run_analysis <- function() {

  library(plyr)
  

  # Load the datasets and merge
  subjectTrain <- read.table("UCI/train/subject_train.txt")
  xTrain <- read.table("UCI/train/X_train.txt")
  yTrain <- read.table("UCI/train/y_train.txt")
  
  subjectTest <- read.table("UCI/test/subject_test.txt", header=FALSE)
  xTest <- read.table("UCI/test/X_test.txt")
  yTest <- read.table("UCI/test/y_test.txt")
  
  # Createing cols Sub, Features and Activity with meanfull names
  colSub <- rbind(subjectTrain, subjectTest)
  names(colSub) <- c("Subject")
  
  colActivity <- rbind(yTrain, yTest)
  names(colActivity)<- c("Activity")
  
  colFeatures <- rbind(xTrain, xTest)
  # reading features for the names
  featuresNames <- read.table("UCI/features.txt")
  names(colFeatures) <- featuresNames$V2
  
  # Creating the dataset
  data <- cbind(colSub, colActivity, colFeatures)
  
  ### 2. Extracts only the measurements on the mean and standard deviation for each measurement.
  
  # grep rows with mean and std
  valNames <- grep("mean|std", featuresNames$V2, value=TRUE)
  
  # list for the names to select
  names <- c(as.character(valNames), "Activity", "Subject")
  data <- subset(data, select=names)
  
  ### 3. Uses descriptive activity names to name the activities in the data set
  activityNames <- read.table("UCI/activity_labels.txt")
  data$Activity <- activityNames[data$Activity, 2]
  
  ### 4. Appropriately labels the data set with descriptive variable names.
  names(data)<-gsub("^t", "time", names(data))
  names(data)<-gsub("^f", "frequency", names(data))
  names(data)<-gsub("Acc", "Accelerometer", names(data))
  names(data)<-gsub("Gyro", "Gyroscope", names(data))
  names(data)<-gsub("Mag", "Magnitude", names(data))
  names(data)<-gsub("BodyBody", "Body", names(data))
  
  # 5. From the data set in step 4, creates a second, independent tidy data set 
  #with the average of each variable for each activity and each subject.
  
  data2<-aggregate(. ~Subject + Activity, data, mean)
  data2<-data2[order(data2$Subject,data2$Activity),]
  write.table(data2, file = "tidydata.txt",row.name=FALSE)

  
}
