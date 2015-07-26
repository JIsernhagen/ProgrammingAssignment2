#Script goal:  assembling the contents of five files into one useable rectangle.
# 1) read the data in from the working directory
setwd("./UCI HAR Dataset") #drop into the test UCI HAR Dataset subdirectory
column_headers<-read.table("features.txt") #read column header data
setwd("./test") #drop into the test subdirectory
subjects_test<-read.table("subject_test.txt") #read test group subjects
activities_test<-read.table("y_test.txt") #read test group activity labels
obs_test<-read.table("x_test.txt") #read test group observations
setwd("../../") #pop up two directory levels
setwd("./UCI HAR Dataset/train")  #drop into the train directory
subjects_train<-read.table("subject_train.txt") #read train group subjects
activities_train<-read.table("y_train.txt") #read train group activity labels
obs_train<-read.table("x_train.txt") # read train group observations
setwd("../../") #pop up two directory levels, leave wd where as we found it

# 2) change column names to be more human- and machine-readable (Assignment question #4a)
column_vector <- as.vector(column_headers$V2)
column_vector<-gsub("-", "_", column_vector) #remove dashes in favor of underscores
column_vector<-gsub("\\(", "", column_vector) #eliminate left parentheses
column_vector<-gsub("\\)", "", column_vector) #eliminate right parentheses
column_vector<-gsub("\\,", "_", column_vector) #substitute dash for comma
column_vector<-gsub("tBody", "TimeBody", column_vector) #substiute "Time" for "t"
column_vector<-gsub("fBody", "FrequencyBody", column_vector) #substiute "Frequency" for "f"
column_vector<-gsub("Acc", "Acceleration", column_vector) #substitute "Acceleration" for "Acc"
column_vector<-gsub("Mag", "Magnitude", column_vector) #substitute "Magnitude" for "Mag"

# 3) concatenate subjects (subject_test.txt), activites  (y_test.txt) and observations (x_text.txt) into single row (Assignment question #1a)
cobs_test<-cbind(subjects_test, activities_test, obs_test) #'cobs' = concatenated observations

# 4) concatenate subjects (subject_train.txt), activites  (y_train.txt) and observations (x_train.txt) into single row (Assignment question #1b)
cobs_train<-cbind(subjects_train, activities_train, obs_train) #'cobx' = concatenated observations

# 5) append the combination from 2 above to the combination from 1 above (Assignment question #1c)
cobs_combined<-rbind(cobs_test, cobs_train)

# 6) write features.txt column labels in place of cobs_combined's default column labels (Assignment question #4b)
column_vector<-c("Subject", "Activity", column_vector) # put "Subject" and "Activity" labels at the top of column_vector
colnames(cobs_combined) <- column_vector

# 7) change activity categories 1, 2, 3, 4, 5, 6 to WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING  (Assignment question #3)
options(max.print=1000000) #increase capacity of max.print so gsub can process all the data.frame rows
cobs_combined$Activity<-gsub("1", "WALKING", cobs_combined$Activity)
cobs_combined$Activity<-gsub("2", "WALKING_UPSTAIRS", cobs_combined$Activity)
cobs_combined$Activity<-gsub("3", "WALKING_DOWNSTAIRS", cobs_combined$Activity)
cobs_combined$Activity<-gsub("4", "SITTING", cobs_combined$Activity)
cobs_combined$Activity<-gsub("5", "STANDING", cobs_combined$Activity)
cobs_combined$Activity<-gsub("6", "LAYING", cobs_combined$Activity)

# 8) extract mean and standard deviation for each measurement, and output (Question #2)
cobs_combined<-cobs_combined[, !duplicated(colnames(cobs_combined))] #delete redundant-named columns
library(dplyr) #fire up plyr
cobs_mean_std<-select(cobs_combined, Subject:TimeBodyAcceleration_std_Z) #extract specified columns
write.table(cobs_mean_std, "cobs_mean_std.csv", row.names = TRUE, col.names = TRUE) #write out

# 9) create a second, independent tidy data set with average of each variable for each activity and subject
cobs_activity_subject_split<-group_by(cobs_mean_std, Activity, Subject) #creating, melting and outputting the activity/subject file
cobs_activity_subject_average<-summarize(cobs_activity_subject_split, TimeBodyAcceleration_mean_X_mean = mean(TimeBodyAcceleration_mean_X), TimeBodyAcceleration_mean_Y_mean = mean(TimeBodyAcceleration_mean_Y), TimeBodyAcceleration_mean_Z_mean = mean(TimeBodyAcceleration_mean_Z), TimeBodyAcceleration_std_X_mean = mean(TimeBodyAcceleration_std_X), TimeBodyAcceleration_std_Y_mean = mean(TimeBodyAcceleration_std_Y), TimeBodyAcceleration_std_Z_mean = mean(TimeBodyAcceleration_std_Z))
library(reshape2) # activating reshape2 for melting procedure.  We are creating the "tall, skinny" version of the requested "tidy" data table.
cobs_activity_subject_average_melted<-melt(cobs_activity_subject_average, id=c("Activity", "Subject"), measure.vars=c("TimeBodyAcceleration_mean_X_mean", "TimeBodyAcceleration_mean_Y_mean", "TimeBodyAcceleration_mean_Z_mean", "TimeBodyAcceleration_std_X_mean", "TimeBodyAcceleration_std_Y_mean", "TimeBodyAcceleration_std_Z_mean"))
write.table(cobs_activity_subject_average_melted, "cobs_activity_subject_average_melted.txt", row.names = FALSE, col.names = TRUE)

# 10) output cobs_combined all-inclusive data table.  Optional, commented out.
#write.table(cobs_combined, "cobs_combined.csv", row.names = TRUE, col.names = TRUE)
