# Getting and Cleaning Data

This project contains all material submitted for the Peer-graded assignment of Coursera "Getting and Cleaning Data" course, week 4 (part of Coursera Data Science specialization).

## Project content
This project includes the following files:
* README.md (the present file): general information on the documents provided, and documentation of the approach used / choices made to build the requested script
* CodeBook.md: description: description of the data manipulated in this project: origin, structure, transformations applied. No further information is therefore provided on the data in this README file, except for rationales behind data manipulation executed in the script. 
* run_analysis.R: script manipulating the provided dataset to produce two outputs
  * a tidy dataset containing a subset of the initial data
  * a second dataset, summarizing the tidy data per subject & activity## 
 
##  Description of the run_analysis.R script

You will find here the following key infomration:
* assumptions to be verified to run the script successfully
* struture of the script
* additional comments to facilitate script understanding & verification

### Assumptions

** Source files required by the script **
The * run_analysis.R * script needs to access and read the following files:
* "features.txt", used to collect the names of the variables measured during the experiment on the subjects for each activity
* "activity_labels.txt", used to retrieve the names of activities performed by the subjects during the experiment
* "subject_test.txt" and "subject_train.txt", to retrieve the id of the subjects on which data was observed, for test & train datasets respectively
* "test_activities.txt" and "train_actvities.txt", to retrieve the list of activities performed by the subjects during the experiment, for test & train datasets respectively
* "test_data.txt" and "train_data.txt", to retrieve the actual measures on the variables observed during the experiment, for test & train datasets respectively

** Location of source files **
To run successfully, the script needs to access the txt source files provided as part of the assignment and listed above.
** *It is assumed that the initial zipped file has been unzipped in the working directory (wd) of the user.* ** This means that the wd contains a folder labelled "UCI HAR Dataset". Initially, the * run_analysis.R * updates the R wd to set it in that "UCI HAR Dataset" folder. If you have unzipped the provided data in a different location than your home folder, please update the setwd() command in the script so that it it set to your "UCI HAR Dataset" folder (or move that folder to your home directory).

** *It is assumed that the "UCI HAR Dataset" folder has the default structure set by unzipping:* **
* files "activity_labels.txt" and "features.txt" are located in the "UCI HAR Dataset",
* files "subject_test.txt", "test_activities.txt", and "test_data.txt" are located in a "test" subfolder in the "UCI HAR Dataset" folder, 
* files "subject_train.txt", "train_activities.txt", and "train_data.txt" are located in a "train" subfolder in the "UCI HAR Dataset" folder.

Please make sure this is the case for you also, otherwise R will fail reading the txt files.

** Available packages **
The * run_analysis.R * script used two packages: **readr** (to read the input files) and **dplyr** to manipulate the dataset.
** *It is assumed that those two packages are already installed. The script only loads them* ** (to avoid modifying the user's set up out of his control). If those packages are not installed in your R environment, please install them prior to running the script, using the install.packages("readr") and install.packages("dplyr") commands as relevant.

## Structure of the run_analysis.R script

The script structure followes the questions raised in the assignment. It is therefore builds as described below. Please note that this structure is also clearly visible through the comments in the script itself. 
1. SET UP: this section updates the working director and loads required libraries
2. STEP 1: this part of the script reads all input files, and uses them to merge them into one full dataset with column names
  * all files are read into R;
  * the test dataset and train dataset are first consolidated in parallel into a "test_full" and "train_full" dataset respectively, with  column names as provided in the source files,
  * finally, the test & train datasets are merged into a "full_dataset".
3. STEP 2: a subset of the "full_dataset" is created and assigned to MS_Data (**M**ean **S**tandard deviation **Data**) by extracting only the measurements on the mean and standard deviation for each measurement.
4. STEP 3: the default integers used to identify the activity corresponding to the measurements are replaced with meaningfull names extracted from the "activity_labels.txt" read in Step 1. This is done by together with transforming that variable into a factor, as this is the appropriate format for handling this list of 6 possible activities.
5. STEP 4: Appropriately labels the data set with descriptive variable name
6. STEP 5: A new, independent tidy data set is created, containing only the average of each variable for each activity and each subject. This is obtained by grouping the MS_Data dataset by SubjectId and Activity, and then calculating the average for all remaining variables.

## Additional comments on the run_analysis.R script
### The make.names function
During the initial import and merge steps, choice was to use the readr package, which allows to manipulate tibbles and guarantees data consistency. 
Nevertheless, when merging initially the test_full & train_full datasets with the bind_rows function, the resulting dataset was missing columns. It has appeared that this was the result of duplicate column names in the source date (which can be checked using *sum(duplicated(var_names_vector))* that finds 84 duplicates). 
As a result, the make.names function is applied onto the list of variable names read from the "activity_labels.txt" to obtain a list of variable that 
* is syntactically valid: all "(" and ")" characters in variable names are replaced by a "."
* has no duplicate (argument unique = TRUE in function call): a "\_i" is added at the end of the end of the variable names in case of duplicates (with i an index starting at 1).

This has the following *impacts* on the rest of the script:
* the bind_rows function works properly and keeps all columns in the initial sets
* the pattern to identify mean and sd in variable names to create the MS_data is "mean\\.\\." and "std\\.\\." instead of "mean\\(\\)" and "std\\(\\)"
* during step 4, the useless "." are removed to label the data more clearly, but the indexes are kept, allowing to uniquely identify each column

### The summarise_each function
To create the second data set, it is necessary, after grouping the dataset by SubjectId and Activity, to calculate the mean() for each of the remaining columns. To obtain that which avoiding a complicated loop, the summarize_each function is used. As per description, summarize_each allows to "Apply one or more functions to one or more columns. Grouping variables are always excluded from modification". This is exactly what is needed, as all columns not to be summarized are indeed included in the group-by.
