install.packages("stringr")
library(stringr)
install.packages("data.table")
library(data.table)
install.packages("dplyr")
library (dplyr)

## Establish relative filePath ##
wd <- getwd()
directory <- "UCI HAR Dataset"
filePath <- paste(wd,directory, sep="/")

## load features metadata
signals <- fread(paste(filePath, "/features.txt", sep="/"), select = c (2:2), col.names = "signals")
##load the test dataset from my wd (target and predictors)
x_test_data <- read.table(paste(filePath, "test/X_test.txt", sep="/"), col.names = unlist(signals))
y_test_data <- read.table(paste(filePath, "test/y_test.txt", sep="/"),  col.names = "activity")
##load observations (subjects under study)
subjtest <- read.table(paste(filePath, "test/subject_test.txt", sep="/"),  col.names ="subj")
##load activity labels
activ_labels <-read.table(paste(filePath, "activity_labels.txt",sep="/"), col.names = c("ID","Descrip"))


##load the training dataset
x_train_data <- read.table(paste(filePath, "train/X_train.txt", sep="/"), col.names = unlist(signals))
y_train_data <- read.table(paste(filePath, "train/y_train.txt", sep="/"), col.names = "activity")
##load observations (subjects under study)
subjtrain <- read.table(paste(filePath, "train/subject_train.txt", sep="/"),   col.names ="subj")


#1 merging training dataset
train <- cbind(y_train_data,cbind(x_train_data,subjtrain))
#merging test dataset
test <- cbind(y_test_data,cbind(x_test_data,subjtest))
#merging training and test dataset
wrdat <- rbind (train, test)

#2 measurements on the mean and standard deviation
std <- wrdat [str_subset(names(wrdat),"std")]
mean <- wrdat [str_subset(names(wrdat),"mean")]
sb <- subset(wrdat, select = c(activity, subj))
wrdat <- cbind (sb,cbind(std, mean))

#3 activity names to name the activities in the data
wrdat$activity = activ_labels[wrdat$activity,2]

#4 Appropriately labels the data set with descriptive variable names.
colnames(wrdat) <- gsub("  ","",gsub("\\."," ",colnames(wrdat)))

#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## grouping by activity and subject  
avgdata <- wrdat %>%  group_by(subj, activity)%>% summarise_each(funs(mean))

# Create file
write.table(avgdata, file = "avgdata.txt", row.names = F)
