# Read activities and label the aproppriate columns 
activity_labels <- read.table("./activity_labels.txt",col.names=c("activity_id","activity_name"))

# Read columns
features <- read.table("features.txt")
feature_names <-  features[,2]

# Read test data and label columns
testdata <- read.table("./test/X_test.txt")
colnames(testdata) <- feature_names

#Read training data and label columns
traindata <- read.table("./train/X_train.txt")
colnames(traindata) <- feature_names

# Read ids of test subjects and label columns
test_subject_id <- read.table("./test/subject_test.txt")
colnames(test_subject_id) <- "subject_id"

# Read activity_id of test data and label columns
test_activity_id <- read.table("./test/y_test.txt")
colnames(test_activity_id) <- "activity_id"

# Read ids of test subjects and label columns
train_subject_id <- read.table("./train/subject_train.txt")
colnames(train_subject_id) <- "subject_id"

# Read activity_id of training data and label columns
train_activity_id <- read.table("./train/y_train.txt")
colnames(train_activity_id) <- "activity_id"

#Combine test subject_id, test activity_id and test data into one dataset
test_data <- cbind(test_subject_id , test_activity_id , testdata)

#Combine test subject_id, test activity_id and test data into one dataset
train_data <- cbind(train_subject_id , train_activity_id , traindata)

#Combine test and train data
all_data <- rbind(train_data,test_data)

#Keep only columns with mean or std
mean_col_idx <- grep("mean",names(all_data),ignore.case=TRUE)
mean_col_names <- names(all_data)[mean_col_idx]

std_col_idx <- grep("std",names(all_data),ignore.case=TRUE)
std_col_names <- names(all_data)[std_col_idx]

meanstddata <-all_data[,c("subject_id","activity_id",mean_col_names,std_col_names)]

# ?Merge dataset with mean and std values to get one dataset with descriptive names
descrnames <- merge(activity_labels,meanstddata,by.x="activity_id",by.y="activity_id",all=TRUE)

# Melt the dataset with descriptive activities
melt_data <- melt(descrnames,id=c("activity_id","activity_name","subject_id"))

# Cast the melted dataset by activity and subject
mean_data <- dcast(melt_data,activity_id + activity_name + subject_id ~ variable,mean)

# Create a tidy data file
write.table(mean_data,"./tidy_data.txt", row.name=FALSE)
