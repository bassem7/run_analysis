# run_analysis

 README.md
How the script works: 
The purpose of the script is to read previously saved data from accelerometers from a training cohort, and a test cohort.  

Before starting,  the script should be run in the working directory containing the folders which contain the “train” and ”test” files.
The data is loaded from the .txt files into 6 variables as follows:
 - Subject identifiers: 
	-  a = the subject identifiers for train data set loaded from subject_train.txt; d = the subject identifiers for test data set loaded from subject_test.txt
- activity labels:
	-  b =  the activity labels for train data set loaded from y_train.txt; e =  the activity labels for test data set loaded from y_test.txt;
	- c =  the data set for train data set loaded from X_train.txt; f=  the data set for test data set loaded from X_test.txt;
 
The script then combines the train data ( variables: a,b,c) into a single data frame (dt1) and the test data ( variables: d,e,f) into a single data frame (dt2). 
It then appends the train  data (dt1) and test data (dt2) into a single data frame dt3
	- The first column is “tort”: the origin of the data (Train or Test)
	-  The 2nd column is “subject”: reflect the subject identifier 
	- The 3rd column is the activity label
	- the rest of the columns are the data.
It then changes the column names of the data to reflect the particular measurements using the names in the features.txt file.
The script then selects the columns with names that contain  “mean” and “std”, reflecting means and standard deviations and this is saved into data frame dt4

The numeric categories in column “activitylabel” are converted to text factors to reflect the activity

Finally the mean of each variable for every subject and each activity is calculated.
The result is written into a tidy data file : tidydata.txt
