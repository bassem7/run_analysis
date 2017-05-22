#CodeBook

 - activityLabel:  factor variable of the activity performed. 6 Possibilities:  ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
 - subject: identifier for each subject (person). 30 possible subjects from 1-30

The columns are labeled by variable names from features.txt which is described in detail in features_info.txt. 
 - briefly those with prefix of t are denotes time domain , denotes the frequency domain. The '-XYZ' labels at the end denote 3-axial signals in the X, Y and Z directions.
 - mean () denotes the mean,  std () denotes the standard deviation, meanFreq() weighted average of the frequency components to obtain a mean frequency

Cols 1-12:  acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
"tBodyAcc-mean()-X"               	"tBodyAcc-mean()-Y"          	"tBodyAcc-mean()-Z"              
“tBodyAcc-std()-X"                		"tBodyAcc-std()-Y"           	"tBodyAcc-std()-Z"               
"tGravityAcc-mean()-X"            	"tGravityAcc-mean()-Y"  	"tGravityAcc-mean()-Z"           
"tGravityAcc-std()-X"             		"tGravityAcc-std()-Y"     		"tGravityAcc-std()-Z"            

Cols 13-18:  Jerk signal which is the  time derivative of the linear acceleration 
"tBodyAccJerk-mean()-X"           	"tBodyAccJerk-mean()-Y" 	"tBodyAccJerk-mean()-Z"          
"tBodyAccJerk-std()-X"            	"tBodyAccJerk-std()-Y"          "tBodyAccJerk-std()-Z"           

Cols 19-24:  Gyroscope signal in each of the axes:
"tBodyGyro-mean()-X"              	"tBodyGyro-mean()-Y"  		"tBodyGyro-mean()-Z"             
"tBodyGyro-std()-X"               		"tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"              

Cols 25-30:  Jerk signal which is the  time derivative of the angular velocity 
"tBodyGyroJerk-mean()-X"          	"tBodyGyroJerk-mean()-Y"   	"tBodyGyroJerk-mean()-Z"         
"tBodyGyroJerk-std()-X"           	"tBodyGyroJerk-std()-Y"        	"tBodyGyroJerk-std()-Z"     

Cols 31- 40 Magnitude of the signals using Eclidean Norm:
"tBodyAccMag-mean()"              	"tBodyAccMag-std()"              
"tGravityAccMag-mean()"           	"tGravityAccMag-std()"           
"tBodyAccJerkMag-mean()"    	"tBodyAccJerkMag-std()"   
"tBodyGyroMag-mean()"             	"tBodyGyroMag-std()"             
"tBodyGyroJerkMag-mean()"      	"tBodyGyroJerkMag-std()"     

Cols 41- end Fast Fourier Transform (FFT)  of the signals along the axes
"fBodyAcc-mean()-X"               	"fBodyAcc-mean()-Y"              	"fBodyAcc-mean()-Z"              
"fBodyAcc-std()-X"                		"fBodyAcc-std()-Y"                       	"fBodyAcc-std()-Z"               
"fBodyAcc-meanFreq()-X"           	"fBodyAcc-meanFreq()-Y"      	"fBodyAcc-meanFreq()-Z"           
"fBodyAccJerk-mean()-X"           	"fBodyAccJerk-mean()-Y"        	 "fBodyAccJerk-mean()-Z"           
"fBodyAccJerk-std()-X"            	"fBodyAccJerk-std()-Y"                  	"fBodyAccJerk-std()-Z"            
"fBodyAccJerk-meanFreq()-X"       "fBodyAccJerk-meanFreq()-Y"      "fBodyAccJerk-meanFreq()-Z"    
"fBodyGyro-mean()-X"              	"fBodyGyro-mean()-Y"             	"fBodyGyro-mean()-Z"              
"fBodyGyro-std()-X"               		"fBodyGyro-std()-Y"        		"fBodyGyro-std()-Z"               
"fBodyGyro-meanFreq()-X"          	"fBodyGyro-meanFreq()-Y"         	"fBodyGyro-meanFreq()-Z"         
 "fBodyAccMag-mean()"              	"fBodyAccMag-std()"              		
"fBodyAccMag-meanFreq()"          "
“fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-std()"      
"fBodyBodyAccJerkMag-meanFreq()"  
"fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-std()"         
"fBodyBodyGyroMag-meanFreq()"     
"fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-std()"     
"fBodyBodyGyroJerkMag-meanFreq()"
