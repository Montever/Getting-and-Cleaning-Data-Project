# download_data_clean_proj.R
# Program to unload and unzip the files needed for the run_analysis project

# Asume working directory has been set
# setwd("./DataClean")


download_data_clean_proj <- function() {
    
# Check if zip file exists, if not download
fi_name = "UCI_HAR_Dataset.zip"
if (!file.exists(fi_name)){
    fi_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fi_url, dest=fi_name, mode="wb")
}

# Check if folder exists... if it does the file must have been unzipped allready
if (!file.exists("UCI HAR Dataset")) {
    unzip(fi_name)
}
print("files loaded")

#end of program
}
