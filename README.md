# run_analysis

How the script works:
Script should be run in the working directory conting the files: the train and test files
It loads the data from these directories into several variables
It then appends the train and test files together
It then chnages the variables names to reflect the measurements using the names in the features.txt file
It then picks those with mean and std dev
It then calculates the mean for each variable.
writes this to file.


Code Book
  a: subjects in the train
  b: acitivity in train
  c: data from Train
  dt1 combines all these  (train data) into a single data frame

d: subjects in the test
  e: acitivity in test
  f: data from test
dt2 combines all these  (test data) into a single data frame


dt3 appends dt1 and dt2  (all data together)

g is the naem of the variables as listed in the features txt file

dt4 is the subset of variables from dt3 (All data), which have mean and std

dt5 is a tidy data set of mean of all variables by activity and subject
