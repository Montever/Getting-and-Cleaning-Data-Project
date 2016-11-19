#run_analysis.R
#Coursera - Data Cleaning course - project

# Program requires files to be downloaded and unzipped (see downlod_data_clean_proj.R)
# Asumes the dplyr package has been installed and working directory has been set, for example:
# install.packages("dplyr", dependencies=TRUE)
# setwd("./DataClean")

run_analysis <- function() {

library(dplyr)        
fi_name = "UCI_HAR_Dataset.zip"
if (!file.exists(fi_name)){
    fi_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fi_url, dest=fi_name, mode="wb") 
}  
# Check if folder exists... if it does the file must have been unzipped
if (!file.exists("UCI HAR Dataset")) { 
    unzip(fi_name) 
}

# load required libraries and configure to see all significant digits
library(dplyr)
options(digits=8)

# Read Lablel files (features and activities)
fi_fea_lbl <- "./UCI HAR Dataset/features.txt"
df_fea_lbl <- read.table(fi_fea_lbl, header=FALSE, col.names=c('FeatureId','FeatureName'))

fi_act_lbl <- "./UCI HAR Dataset/activity_labels.txt"
df_act_lbl <- read.table(fi_act_lbl, header=FALSE, col.names=c('ActivityId','ActivityName'))


# Read data files from test and train
# first read the lablels
fi_sub_test  <- "./UCI HAR Dataset/test/subject_test.txt"
fi_fea_test  <- "./UCI HAR Dataset/test/X_test.txt"
fi_act_test  <- "./UCI HAR Dataset/test/y_test.txt"
fi_sub_train <- "./UCI HAR Dataset/train/subject_train.txt"
fi_fea_train <- "./UCI HAR Dataset/train/X_train.txt"
fi_act_train <- "./UCI HAR Dataset/train/y_train.txt"

df_sub_test  <- read.table(fi_sub_test, header=FALSE,col.names = "SubjectId")
df_fea_test  <- read.table(fi_fea_test, header=FALSE)
df_act_test  <- read.table(fi_act_test, header=FALSE,col.names = "ActivityId")
df_sub_train <- read.table(fi_sub_train, header=FALSE,col.names = "SubjectId")
df_fea_train <- read.table(fi_fea_train, header=FALSE)
df_act_train <- read.table(fi_act_train, header=FALSE,col.names = "ActivityId")

#join (row bind) the datasets
df_sub_all <-rbind(df_sub_test ,df_sub_train)
df_fea_all <-rbind(df_fea_test ,df_fea_train)
df_act_all <-rbind(df_act_test ,df_act_train)

#remove data frames no longer used
rm (df_sub_test, df_act_test, df_fea_test, df_sub_train, df_act_train, df_fea_train)


#Select only the columns with mean or std using the features label file
df_cols_req <- filter(df_fea_lbl, grepl('mean|Mean|std', FeatureName))
#the first column of df_cols_req includes the column numbers required
df_fea_sel<-select(df_fea_all,df_cols_req$FeatureId)

#Make column names more readable 
# Format variable_names; for simplicity performed in 2 steps
#  1) Change () and ) for nothing
#  2) change ( and , for -  

df_cols_req$FeatureName <- gsub( "\\()|\\)" , "" , df_cols_req$FeatureName )
df_cols_req$FeatureName <- gsub( "\\(|\\," , "-" , df_cols_req$FeatureName )

#change the column names
names(df_fea_sel)<-df_cols_req$FeatureName

#Merge the activity labels (used left_join from dplyr) 
#Note: merge was not used since it re-arranges the data even with sort=FALSE
df_act_all <-left_join(df_act_all,df_act_lbl, BY="ActivityId")
df_act_all <-select(df_act_all,-ActivityId)

#merge (col bind) all the data
df_all_data  <- cbind(df_sub_all ,df_act_all , df_fea_sel )

#group by Subject and activity
#Use summarise_each to get the mean o all metrics
df_mean_data <-summarise_each(group_by(df_all_data ,SubjectId, ActivityName),funs(mean))

write.table(df_mean_data, file = "tidy_mean.txt",row.names=FALSE)

print("file tidy_mean.txt created")
#end of program
}