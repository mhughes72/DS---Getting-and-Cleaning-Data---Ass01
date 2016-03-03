
#Getting and Cleaning Data: Course Project
##Introduction

Coursera course "Getting and Cleaning data", part of the Data Science specialization.
This file contains notes outlining the original and processed data.
For more information please refer to the CodeBook.md file.

##About the Data

###Training and Testing Data Sets
These data sets include the raw results from both sets of experiments.  They are found under the UIC/test and UIC/train directories respectively.

###Other Data
- Subject: The number label for each of the subjects in the experiment
- Activity: The name of the activity for each result set

##Script and TidyData.txt

The script reads in data from all data sets included under the UIC directory
Each Subject is paired with the approprieate Activity and the results are combined and each column is appropriately renamed to match.  The means of each result set are calculated and included in the resulting tidydata.txt file.

