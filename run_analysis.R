################ Change Working Directory ################


oldwd <- getwd()
newwd <- paste(oldwd,"Coursera/R/data/Course3/Project/Getting-and-Cleaning-Data-Course-Project",sep = "/")
setwd(newwd)


##########################################################


## Setting variables with file names

parentDir <- "./UCI HAR Dataset/"
subDir <- "/Inertial Signals/"

features <- read.table(paste(parentDir, "features.txt", sep = "") ,header = FALSE)

features[,2] <- gsub("^t","TIME_",features[,2])
features[,2] <- gsub("^f","FREQ_",features[,2])
features[,2] <- gsub("Acc","_acceleration_",features[,2])
features[,2] <- gsub("Mag","_magnitude_",features[,2])
features[,2] <- gsub("Gyro","_gyroscope_",features[,2])
features[,2] <- gsub("(Body)+","_body",features[,2])
features[,2] <- gsub("angle","ANGLE_",features[,2])
features[,2] <- gsub("__","_",features[,2])
features[,2] <- gsub("_-","_",features[,2])
features[,2] <- gsub("Gravity","gravity",features[,2])
features[,2] <- gsub("Energy","energy",features[,2])
features[,2] <- gsub("Coeff","coeff",features[,2])
features[,2] <- gsub("Jerk","jerk",features[,2])
features[,2] <- gsub("Mean","mean",features[,2])
features[,2] <- gsub("\\(","",features[,2])
features[,2] <- gsub("\\)","",features[,2])
features[,2] <- gsub("-","_",features[,2])
features[,2] <- gsub(",","-",features[,2])
features[,2] <- gsub("_t_","_TIME_",features[,2])


activies <- read.table(paste(parentDir, "activity_labels.txt", sep = "") ,header = FALSE)

###################### Training set ######################
  
  subjectTrain <- paste(parentDir,"train","/subject_train.txt",sep = "")
  XTrain <- paste(parentDir,"train","/X_train.txt",sep = "")
  YTrain <- paste(parentDir,"train","/Y_train.txt",sep = "")

  ## Loading Data
  trainSubj <- read.table(subjectTrain, header = FALSE)
  trainX <- read.table(XTrain, header = FALSE)
  trainY <- read.table(YTrain, header = FALSE)
  trainData <- cbind(trainSubj, trainX, trainY)
  
######################## Test set ########################
  
  subjectTest <- paste(parentDir,"test","/subject_test.txt",sep = "")
  XTest <- paste(parentDir,"test","/X_test.txt",sep = "")
  YTest <- paste(parentDir,"test","/Y_test.txt",sep = "")
  
  ## Loading Data
  testSubj <- read.table(subjectTest, header = FALSE)
  testX <- read.table(XTest, header = FALSE)
  testY <- read.table(YTest, header = FALSE)
  testData <- cbind(testSubj, testX, testY)
  
############## Merge Training and Test Data ##############
  
  allData <- rbind(trainData,testData)
  
  colnames(allData)[1] <- "Subject ID"
  colnames(allData)[563] <- "Activity"
  
  allData <- arrange(allData, `Subject ID`)
  colnames(allData)[2:562] <- features[,2]
  
  allData$Activity <- factor(allData$Activity, levels = activies[,1], labels = activies[,2])
  allData$Activity <- as.character(allData$Activity)
  
  reqData <- cbind(allData[,"Subject ID"], allData[grepl("mean|std",names(allData))], allData[, "Activity"])
  colnames(reqData)[1] <- "Subject ID"
  colnames(reqData)[88] <- "Activity"
  
############## Grouping by Subject-ACtivity ##############
  
  groupedData <- aggregate(reqData, by = list(reqData$`Subject ID`, reqData$Activity), mean)
  groupedData <- groupedData[,c(1:2,4:89)]
  
  colnames(groupedData)[1] <- "Subject ID"
  colnames(groupedData)[2] <- "Activity"
  
#################### Writing to File #####################
  
  write.table(groupedData, file = "tidy_dataset.txt", row.names = FALSE)
  