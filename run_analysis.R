# run_analysis.R
# If the smartphone data is unzipped into the current working directory, this
# script will:
#
# 1. Merge the training and test datasets into one dataset
# 2. Extract the mean and std. dev for each measurement
# 3. Describe the activities in the dataset
# 4. Label the variables in the dataset
# 5. Create a second dataset of the average of each variable for each activity
#     and each subject.

library(reshape)

# Load data
subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")
X_test = read.table("UCI HAR Dataset/test/X_test.txt")
Y_test = read.table("UCI HAR Dataset/test/Y_test.txt")

subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")
X_train = read.table("UCI HAR Dataset/train/X_train.txt")
Y_train = read.table("UCI HAR Dataset/train/Y_train.txt")

# Merge Datasets
subject = rbind(subject_test, subject_train)
X = rbind(X_test, X_train)
Y = rbind(Y_test, Y_train)

# Extract mean and std. devs by parsing the feature names in features.txt
var_names = read.table("UCI HAR Dataset/features.txt")
means = grepl("mean()", var_names$V2, fixed=TRUE)
std_devs = grepl("std()", var_names$V2, fixed=TRUE)
keep_cols = means | std_devs
X_extracted = X[,keep_cols]

# Label Variables by parsing the names from features.txt
var_labels = var_names$V2[keep_cols]
var_labels = gsub("-", ".", var_labels, fixed=TRUE)
var_labels = gsub("()", "", var_labels, fixed=TRUE)
colnames(X_extracted) = var_labels

# Describe activities using the labels in activity_labels.txt
activity_map = read.table("UCI HAR Dataset/activity_labels.txt")
activities = merge(Y, activity_map, by.x="V1", by.y="V1")
activities = activities[["V2"]]

data = cbind(subject=subject[["V1"]], activity=activities, X_extracted)

# Create tidy dataset
grouped_data = split(data[,c(-1,-2)], list(data$subject,data$activity), drop=TRUE)
group_means = mapply(colMeans, grouped_data)
tidy = t(group_means)

# Prepend a subject column and an activity column to the tidy data
names = strsplit(rownames(tidy),".", fixed=TRUE)
names = t(matrix(unlist(names), nrow=2))
out_data = cbind(subject = as.numeric(names[,1]), activity = names[,2], tidy)

# Write the tidy data to a file
write.table(out_data, "tidy.txt", col.names = TRUE, quote=FALSE, row.names = FALSE)