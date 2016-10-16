# Codebook

The resulting dataset by the execution of "run_analysis.R" script contains the following Variables:

**NOTE**: The type of these variables is numeric contained in the range [-1,1].

if the variable contains:
- 't': denotes time. The original variables "were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise."
- 'f': denotes that the Fast Fourier Transform was applied.

The possible values for Variable Activity Name are:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

| Variable Name|Type|Description|
| -------------|:-------:|:------------------------------------------------:|
| subj | integer |Identifies a person of the study |
| Activity Name 		| string | Name of the activity measured. The possible values are |
| tBodyAcc std-X 		| numeric | Average of the standard deviation of the body acceleration signal in dimension X |
| tBodyAcc std-Y 		| numeric | Average of the standard deviation of the body acceleration signal in dimension Y |
| tBodyAcc std-Z 		| numeric | Average of the standard deviation of the body acceleration signal in dimension Z |
| tGravityAcc std-X 	| numeric | Average of the standard deviation of the Gravity acceleration in dimension X |
| tGravityAcc std-Y 	| numeric | Average of the standard deviation of the Gravity acceleration in dimension Y |
| tGravityAcc std-Z 	| numeric | Average of the standard deviation of the Gravity acceleration in dimension Z |
| ... | ... | ... |
| ... | ... | ... |
| ... | ... | ... |
| tBodyAccJerk mean-X 	| numeric | Average of the mean of the body acceleration Jerk signal in dimension X |
| tBodyAccJerk mean-Y 	| numeric | Average of the mean of the body acceleration Jerk signal in dimension Y |
| tBodyAccJerk mean-Z 	| numeric | Average of the mean of the body acceleration Jerk signal in dimension Z |
| tBodyGyro mean-X 		| numeric | Average of the mean of the body gyroscope Jerk signal in dimension X |
| tBodyGyro mean-Y 		| numeric | Average of the mean of the body gyroscope Jerk signal in dimension Y |
| tBodyGyro mean-Z 		| numeric | Average of the mean of the body gyroscope Jerk signal in dimension Z |
