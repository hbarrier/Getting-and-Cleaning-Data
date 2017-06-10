#it is assumed that you have unzipped the exercise data in your working directory
#which therefore contains a "UCI HAR Dataset" folder
#with two sub-folders, "test" and "train" with files of interest
#if not the case, please set corresponding wd prior to running this script 


#*******************************************************************************
# SET UP
#*******************************************************************************

#updating the working directory to the unzipped "UCI HAR Dataset" folder
setwd("~/UCI HAR Dataset")

#loading the libraries used in the script
library(readr)
library(dplyr)


#*******************************************************************************
# STEP 1: Merge the training and the test sets to create one data set
#*******************************************************************************

#importing the list of variable names contained in file "features.txt" as characters (not factor)
var_names <- read_delim("features.txt", col_names = c("VariableId", "VariableNames"), delim = " ")

#importing the names of activities contained in file "activity_labels.txt"
act_names <- read_table("activity_labels.txt", col_names = c("ActivityId", "ActivityNames"))
act_names_vec <- act_names[[2]]

#importing test files located in subfolder "test" and train files in subfolder "train"
#importing subject ids
test_subjects <- read_table("test/subject_test.txt", col_names = "SubjectId")
train_subjects <- read_table("train/subject_train.txt", col_names = "SubjectId")

#importing corresponding activities carried out
test_activities <- read_table("test/y_test.txt", col_names = "Activity")
train_activities <- read_table("train/y_train.txt", col_names = "Activity")

#importing test data
test_data <- read_table("test/X_test.txt", col_names = FALSE)
train_data <- read_table("train/X_train.txt", col_names = FALSE)

#creating a vector of all variable names for assignment to names()
#no reordering of variable names is needed to match columns in datasets
var_names_vector <- var_names[[2]]

#force var names to be unique and syntactically valid, which is not the case by default
#if not done, row_bind will remove assumed duplicate columns
#note this replaces any parenthesis by a . and adds index on duplicate names
var_names_unique <- make.names(var_names_vector, unique = TRUE, allow_ = TRUE)

#assign columns names to test & train datasets
names(test_data) <- var_names_unique
names(train_data) <- var_names_unique

# consolidating test & train data in 1 file each
test_full <- bind_cols(test_subjects, test_activities, test_data)
train_full <- bind_cols(train_subjects, train_activities, train_data)

#merging all data in 1 unique dataset
full_dataset <- bind_rows(test_full, train_full) 


#*******************************************************************************
# STEP 2: Extract only the measurements on the mean and standard deviation 
#         for each measurement.
#*******************************************************************************

# identify all columns corresponding to mean
# following the call to make.names, the "()" have been changed to ".." hence the pattern
colId_mean <- grep(pattern= "mean\\.\\.", names(full_dataset))

# identify all columns corresponding to standard deviations
# following the call to make.names, the "()" have been changed to ".." hence the pattern
colId_std <- grep(pattern= "std\\.\\.", names(full_dataset))

# concatenate the list of columns to be kept after subsetting, in addition to SubjectId and Activity
colId_keep <- c(colId_mean, colId_std)

# select Mean & Standard deviation columns in a new dataset, 
# in addition to SubjectiId (col 1) and Activity (col 2) 
MSd_data <- select(full_dataset, c(1,2,colId_keep))


#*******************************************************************************
# STEP 3: Use descriptive activity names to name the activities in the data set
#*******************************************************************************

# The Activity variable is changed to a factor, as this is the most relevant class for it
MSd_data$Activity <- factor(MSd_data$Activity)
# Factor levels are updated to use the meaningfull activity names instead of numbers
levels(MSd_data$Activity) <- act_names_vec


#*******************************************************************************
# STEP 4: Appropriately label the data set with descriptive variable names
#*******************************************************************************

# Although it would have been possible to fully spell each variable name and remove abbreviations,
# this would lead to very long variable names, making any further manipulation impractical. 
# As a result, it is voluntarily avoided.
# The remaining abbreviations are simple to remember and explained in the Codebook.

# update all ...X, ...Y and ...Z to _X, _Y and _Z respectively
names(MSd_data) <- sub(pattern = "\\.{3}", replacement="_", names(MSd_data))

# change any "BodyBody" string to "Body"
names(MSd_data) <- sub(pattern="BodyBody", replacement="Body", names(MSd_data))

# remove any ".." located at the end of the variable name
names(MSd_data) <- sub(pattern="\\.{2}$", replacement="", names(MSd_data))

#*******************************************************************************
# STEP 5: Create a second, independent tidy data set with the average of each 
#         variable for each activity and each subject
#*******************************************************************************

Avg_data <- MSd_data %>% 
  group_by(SubjectId, Activity)%>%
  summarise_each(funs(mean))

# this line saves the dataset as a text file labelled "tidySummary.txt" using the write.table function.
# remove the comment # below if you want it to be executed as part of the script
# it was set as comment at the moment to avoid writing a file on your hard disk without you knowing
# write.table(Avg_data, row.name=FALSE, file ="tidySummary.txt") 
  
