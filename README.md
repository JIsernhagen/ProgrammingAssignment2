ReadMe file for Getting and Cleaning Data peer-graded course project.

The purpose of this script is to complete the five tasks required for this programming assignment, specifically:
1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement. 
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Represented graphically, the files' contents bolt together as follows:
____________________________________________________________________
| "Subject" header    |"Activity" header     | features.txt headers |                                    |
|_____________________|______________________|______________________|
|                     |                      |                      |
|  subjects data      |   activities data    |  observations        | 
|  subject_test.txt   |   y_test.txt         |  x_test.txt          |
|_____________________|______________________|______________________|
|                     |                      |                      |   
|  subjects data      |   activities data    |  observations        |
|  subjects_train.txt |   y_train.txt        |  x_train.txt         | 
|_____________________|______________________|______________________| 
|
All of the script steps numbered 1-6 focus on important the data and then assembling them in a data frame thusly.  This satisfies the requirement for question #1.
1) reads the seven tables into data frames
2) addresses requirement 4 by changing elements of the column names to be more intelligible to readers and processable by R functions.
3) horizontally pulls together the elements of the three middle rectangles above
4) horizontally pulls together the elements of the three bottom rectangles above
5) vertically assembles the data frames created in steps 3 and 4 above into a single data frame.
6) concatenates the column headers "Subject" and "Activity" to the front of the data labels vector, then uses it to replace the existing "V" column names.

7) addresses requirement 3 by replacing the activity numbers with word descriptions.
8) addresses requirement 2 by extracting only the means of the mean and standard deviation (first six) variables for further processing.
9) addresses requirement 5 by melting the data frame into a tall and skinny "tidy" table.  The descriptions of "tidy" in the video lectures were self-contradictory, so I went with what I thought was the safest version, but the script can produce a rectangular table (in 10) if desired.

In order to function correctly, the data tables need to be juxtaposed in the same folders as when they're unpacked in the working directory.