# Coursera - Getting and Cleaning Data - Project

Project for the Coursera Getting and Cleaning Data course.

The main R script, `run_analysis.R` performs the following activities:

1. Loads the activity and feature lablel files into dataframes
2. Loads Subject, Activity and Feature data filesfrom both the training and test directories.
3. Merges the test and training dataframes
4. Using the feature label dataframe filters the columns with "mean" or "standard deviation"
5. Selects the columns from the merged test and training dataframe
6. Changes the names of the columns
7. Appropriately labels the data set with descriptive variable names using join
8. Merges Subject, Activity and Feature
9. Sumarizes (mean) all the variables, grouping by subject and activity
10.Creates (writes) the "tidy_mean.csv"

Note: 
To read the tidy_mean.csv use:
df_tidy_mean <- read.csv("tidy_mean.csv")

To run the script:  
\> source("run_analysis.R")  
\> run_analysis()  


There is a second R script, `download_data_clean_proj.R` to download and unzip the files.
It was separated from the main script since some parameters change between windows/mac/linux.  
The script performs the following activities:

1. Downloads the zip dataset if it does not already exist in the working directory
2. Extracts teh data files(unzips) to the "UCI HAR Dataset" folder, if it does not exist it will createit

To run the script:  
\> source("download_data_clean_proj.R")  
\> download_data_clean_proj()  
