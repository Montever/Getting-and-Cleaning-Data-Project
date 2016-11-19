# Code Book

This code book describes the data structure in "mean_tidy.txt" generated as part of the
Getting and Cleaning Data Course-Project.

## Dimensions 
Column Name                            Data Type  Description 
-------------------------------------- --------- ----------------------------------------------------------
* SubjectId                          - Integer   - The ID of the test subject (values 1-30)
* ActivityName                       - Character - The activity of the measurement, possible values:
                                       WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 

## Metrics
Column Name                            Data Type  Description 
-------------------------------------- --------- ----------------------------------------------------------
* tBodyAcc-mean-X                      - double - mean of the feature: tBodyAcc-mean()-X                   
* tBodyAcc-mean-Y                      - double - mean of the feature: tBodyAcc-mean()-Y                   
* tBodyAcc-mean-Z                      - double - mean of the feature: tBodyAcc-mean()-Z                   
* tBodyAcc-std-X                       - double - mean of the feature: tBodyAcc-std()-X                    
* tBodyAcc-std-Y                       - double - mean of the feature: tBodyAcc-std()-Y                    
* tBodyAcc-std-Z                       - double - mean of the feature: tBodyAcc-std()-Z                    
* tGravityAcc-mean-X                   - double - mean of the feature: tGravityAcc-mean()-X                
* tGravityAcc-mean-Y                   - double - mean of the feature: tGravityAcc-mean()-Y                
* tGravityAcc-mean-Z                   - double - mean of the feature: tGravityAcc-mean()-Z                
* tGravityAcc-std-X                    - double - mean of the feature: tGravityAcc-std()-X                 
* tGravityAcc-std-Y                    - double - mean of the feature: tGravityAcc-std()-Y                 
* tGravityAcc-std-Z                    - double - mean of the feature: tGravityAcc-std()-Z                 
* tBodyAccJerk-mean-X                  - double - mean of the feature: tBodyAccJerk-mean()-X               
* tBodyAccJerk-mean-Y                  - double - mean of the feature: tBodyAccJerk-mean()-Y               
* tBodyAccJerk-mean-Z                  - double - mean of the feature: tBodyAccJerk-mean()-Z               
* tBodyAccJerk-std-X                   - double - mean of the feature: tBodyAccJerk-std()-X                
* tBodyAccJerk-std-Y                   - double - mean of the feature: tBodyAccJerk-std()-Y                
* tBodyAccJerk-std-Z                   - double - mean of the feature: tBodyAccJerk-std()-Z                
* tBodyGyro-mean-X                     - double - mean of the feature: tBodyGyro-mean()-X                  
* tBodyGyro-mean-Y                     - double - mean of the feature: tBodyGyro-mean()-Y                  
* tBodyGyro-mean-Z                     - double - mean of the feature: tBodyGyro-mean()-Z                  
* tBodyGyro-std-X                      - double - mean of the feature: tBodyGyro-std()-X                   
* tBodyGyro-std-Y                      - double - mean of the feature: tBodyGyro-std()-Y                   
* tBodyGyro-std-Z                      - double - mean of the feature: tBodyGyro-std()-Z                   
* tBodyGyroJerk-mean-X                 - double - mean of the feature: tBodyGyroJerk-mean()-X              
* tBodyGyroJerk-mean-Y                 - double - mean of the feature: tBodyGyroJerk-mean()-Y              
* tBodyGyroJerk-mean-Z                 - double - mean of the feature: tBodyGyroJerk-mean()-Z              
* tBodyGyroJerk-std-X                  - double - mean of the feature: tBodyGyroJerk-std()-X               
* tBodyGyroJerk-std-Y                  - double - mean of the feature: tBodyGyroJerk-std()-Y               
* tBodyGyroJerk-std-Z                  - double - mean of the feature: tBodyGyroJerk-std()-Z               
* tBodyAccMag-mean                     - double - mean of the feature: tBodyAccMag-mean()                  
* tBodyAccMag-std                      - double - mean of the feature: tBodyAccMag-std()                   
* tGravityAccMag-mean                  - double - mean of the feature: tGravityAccMag-mean()               
* tGravityAccMag-std                   - double - mean of the feature: tGravityAccMag-std()                
* tBodyAccJerkMag-mean                 - double - mean of the feature: tBodyAccJerkMag-mean()              
* tBodyAccJerkMag-std                  - double - mean of the feature: tBodyAccJerkMag-std()               
* tBodyGyroMag-mean                    - double - mean of the feature: tBodyGyroMag-mean()                 
* tBodyGyroMag-std                     - double - mean of the feature: tBodyGyroMag-std()                  
* tBodyGyroJerkMag-mean                - double - mean of the feature: tBodyGyroJerkMag-mean()             
* tBodyGyroJerkMag-std                 - double - mean of the feature: tBodyGyroJerkMag-std()              
* fBodyAcc-mean-X                      - double - mean of the feature: fBodyAcc-mean()-X                   
* fBodyAcc-mean-Y                      - double - mean of the feature: fBodyAcc-mean()-Y                   
* fBodyAcc-mean-Z                      - double - mean of the feature: fBodyAcc-mean()-Z                   
* fBodyAcc-std-X                       - double - mean of the feature: fBodyAcc-std()-X                    
* fBodyAcc-std-Y                       - double - mean of the feature: fBodyAcc-std()-Y                    
* fBodyAcc-std-Z                       - double - mean of the feature: fBodyAcc-std()-Z                    
* fBodyAcc-meanFreq-X                  - double - mean of the feature: fBodyAcc-meanFreq()-X               
* fBodyAcc-meanFreq-Y                  - double - mean of the feature: fBodyAcc-meanFreq()-Y               
* fBodyAcc-meanFreq-Z                  - double - mean of the feature: fBodyAcc-meanFreq()-Z               
* fBodyAccJerk-mean-X                  - double - mean of the feature: fBodyAccJerk-mean()-X               
* fBodyAccJerk-mean-Y                  - double - mean of the feature: fBodyAccJerk-mean()-Y               
* fBodyAccJerk-mean-Z                  - double - mean of the feature: fBodyAccJerk-mean()-Z               
* fBodyAccJerk-std-X                   - double - mean of the feature: fBodyAccJerk-std()-X                
* fBodyAccJerk-std-Y                   - double - mean of the feature: fBodyAccJerk-std()-Y                
* fBodyAccJerk-std-Z                   - double - mean of the feature: fBodyAccJerk-std()-Z                
* fBodyAccJerk-meanFreq-X              - double - mean of the feature: fBodyAccJerk-meanFreq()-X           
* fBodyAccJerk-meanFreq-Y              - double - mean of the feature: fBodyAccJerk-meanFreq()-Y           
* fBodyAccJerk-meanFreq-Z              - double - mean of the feature: fBodyAccJerk-meanFreq()-Z           
* fBodyGyro-mean-X                     - double - mean of the feature: fBodyGyro-mean()-X                  
* fBodyGyro-mean-Y                     - double - mean of the feature: fBodyGyro-mean()-Y                  
* fBodyGyro-mean-Z                     - double - mean of the feature: fBodyGyro-mean()-Z                  
* fBodyGyro-std-X                      - double - mean of the feature: fBodyGyro-std()-X                   
* fBodyGyro-std-Y                      - double - mean of the feature: fBodyGyro-std()-Y                   
* fBodyGyro-std-Z                      - double - mean of the feature: fBodyGyro-std()-Z                   
* fBodyGyro-meanFreq-X                 - double - mean of the feature: fBodyGyro-meanFreq()-X              
* fBodyGyro-meanFreq-Y                 - double - mean of the feature: fBodyGyro-meanFreq()-Y              
* fBodyGyro-meanFreq-Z                 - double - mean of the feature: fBodyGyro-meanFreq()-Z              
* fBodyAccMag-mean                     - double - mean of the feature: fBodyAccMag-mean()                  
* fBodyAccMag-std                      - double - mean of the feature: fBodyAccMag-std()                   
* fBodyAccMag-meanFreq                 - double - mean of the feature: fBodyAccMag-meanFreq()              
* fBodyBodyAccJerkMag-mean             - double - mean of the feature: fBodyBodyAccJerkMag-mean()          
* fBodyBodyAccJerkMag-std              - double - mean of the feature: fBodyBodyAccJerkMag-std()           
* fBodyBodyAccJerkMag-meanFreq         - double - mean of the feature: fBodyBodyAccJerkMag-meanFreq()      
* fBodyBodyGyroMag-mean                - double - mean of the feature: fBodyBodyGyroMag-mean()             
* fBodyBodyGyroMag-std                 - double - mean of the feature: fBodyBodyGyroMag-std()              
* fBodyBodyGyroMag-meanFreq            - double - mean of the feature: fBodyBodyGyroMag-meanFreq()         
* fBodyBodyGyroJerkMag-mean            - double - mean of the feature: fBodyBodyGyroJerkMag-mean()         
* fBodyBodyGyroJerkMag-std             - double - mean of the feature: fBodyBodyGyroJerkMag-std()          
* fBodyBodyGyroJerkMag-meanFreq        - double - mean of the feature: fBodyBodyGyroJerkMag-meanFreq()     
* angle-tBodyAccMean-gravity           - double - mean of the feature: angle(tBodyAccMean,gravity)         
* angle-tBodyAccJerkMean-gravityMean   - double - mean of the feature:angle(tBodyAccJerkMean),gravityMean) 
* angle-tBodyGyroMean-gravityMean      - double - mean of the feature: angle(tBodyGyroMean,gravityMean)    
* angle-tBodyGyroJerkMean-gravityMean  - double - mean of the feature:angle(tBodyGyroJerkMean,gravityMean) 
* angle-X-gravityMean                  - double - mean of the feature: angle(X,gravityMean)                
* angle-Y-gravityMean                  - double - mean of the feature: angle(Y,gravityMean)                
* angle-Z-gravityMean                  - double - mean of the feature: angle(Z,gravityMean)                


For reference some of the abreviations used (copied from the original data):

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

