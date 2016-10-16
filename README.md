This file is explains the analysis files describing different scripts.

# Script Description

## Pre-Requisites

Assumptions: all the data will be extracted under your working directory (wd), in the default folder "UCI HAR Dataset".
Thus, in order to run R script "run_analysis.R", all relevant resources should be localated under UCI HAR Dataset.

## Script Notions

The script is divided in multiple steps:

### Establish relative filePath 

#### Description

Working directory identification and relative filePath

#### Variables:

* wd - string. Working Directory
* directory - string. folder in which the data is located
* filePath - string. wd + directory

### Loads the Features Metadata

#### Description

Loads signals names.


### Load Test Dataset

#### Description

Loads the test dataset (target and predictors) and creates a data frame with them

#### Variables:


* x_test_data - Data frame. Signals data from test
* y_test_data - Data frame. Activity data from test
* subjtest -  Data frame. SubjectTest data from test

### Loads Activity Labels

#### Variables:
* activ_labels - Data frame. Factor (ID, Description)


### Loads the Training Dataset

#### Description

Loads the training dataset (target and predictors) and creates a data frame with them

#### Variables:

* x_train_data - Data frame. Signals data from train
* y_train_data - Data frame. Activity data from train
* subjtrain -  Data frame.


### Merge and Subset

#### Description

1. Unify previous training and test dataset all in one
2. Create a unique dataframe merging data test and training data from previous section
3. Subset taking mean and standard deviation related data.
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject, grouping by activity and subject  

#### Variables:

* train- Data frame. y_train_data + x_train_data + subjtrain
* test - Data frame. y_test_data + x_test_data + subjtest
* wrdat - Data frame. train + test
* std - Data frame. All std related measurements values.
* mean - Data frame. All mean related measurements values. Note: All fields including the word "meanFreq" have been included in the Data frame, as they are considered mean of a variable.
* sb - Data frame. Subset of "wrdat" mean related values.
* wrdat - Data frame. subset from "wrdat" data frame, including "activity" and "subj".
* avgdata - Data frame. grouped data by "subj" and "activity" and calculated each mean. As a result a column per attribute with their own mean values.


