setwd("~/R/datasciencecoursera/Extracting_Cleaning/project")

# packages
library(plyr)
library(dplyr)

# load test data and merge
test <- read.table("X_test.txt")
testid <- read.table("y_test.txt")
testsub <- read.table("subject_test.txt")
testdata <- cbind(testsub, testid, test)

rm("test", "testid", "testsub")

# load training data and merge
train <- read.table("X_train.txt")
trainid <- read.table("y_train.txt")
trainsub <- read.table("subject_train.txt")

traindata <- cbind(trainsub, trainid, train)

rm("train", "trainid", "trainsub")

# merge training and test set
fulldata <- rbind(testdata, traindata)
str(fulldata)

rm("testdata", "traindata")

# Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table("features.txt")
meanstd<- c(grep("mean", features$V2), grep("std", features$V2)) +2
selecteddata <- fulldata[,c(1:2,meanstd)]


# Uses descriptive activity names to name the activities in the data set
# labels
activitylabel<- read.table("activity_labels.txt")
lookup <- activitylabel$V2
selecteddata$V1.1 <- lookup[selecteddata$V1.1]


# Appropriately labels the data set with descriptive variable names. 

featurenames <- gsub("," , "", features$V2)
featurenames <- gsub("-" ,".", featurenames)
featurenames <- gsub("^t" ,"time", featurenames)
featurenames <- gsub("^f" ,"freq", featurenames)

colnames(selecteddata) <- c("subject", "activity", featurenames[meanstd-2])
str(selecteddata)

# From the data set in step 4, creates a second, independent tidy data set with 
# the average of each variable for each activity and each subject.
as_tibble(selecteddata)
tidydata <- selecteddata %>%
    group_by(subject, activity) %>%
    summarize_all(mean)

# creating space delimited file
write.table(tidydata, file= "tidydata.txt", sep = " ")

# help for creating codebook
promptData(tidydata, filename = "info.Rd")