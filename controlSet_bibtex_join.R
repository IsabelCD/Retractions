library(bibliometrix)
library(dplyr)
library(ggplot2)
library(RefManageR)
library(arrow)

work_path <- "C:\\Users\\isabe\\Desktop\\Tese\\thesis_data\\filtered_journals\\journals0-99"


importTextFilesAsDataFrame <- function(folder_path, prefix) {
  # list text files in the specified folder
  matching_files <- list.files(folder_path, pattern = paste0("^", prefix, ".*\\.bib$"))
  if (length(matching_files) == 0) {
    cat("No matching files found.\n")
    return(NULL)
  }
  
  # initialize an empty vector to store the paths of the files
  paths <- c()
  
  # loop through each matching file and read its content
  for (file_name in matching_files) {
    file_path <- file.path(folder_path, file_name)
    paths <- c(paths, file_path)
  }
  
  return(paths)
}


#Get the list of folders to loop
file_list <- list.files(work_path, full.names = TRUE)
files_path <- c()

#Get a list of all files to import 
for (file_path in file_list) {
  function_paths <- importTextFilesAsDataFrame(file_path, prefix = "savedrecs")
  files_path <- c(files_path, function_paths)
}

# function to read and process each file
#df <- convert2df(file = files_path, dbsource = "wos", format = "bibtex")
read_bibtex <- function(file_path) {
  bib_data <- ReadBib(file_path)
  return(as.data.frame(bib_data))
}

#list of dataframes
data_frames <- lapply(files_path, read_bibtex)

# Combine data frames into a single data frame
df <- do.call(rbind, data_frames)

# save Rdata
#save(df, file = paste(work_path, "processed_data", "WoS_controlSet_Rdata.Rda", sep = "/"))

# save csv
write.csv(df, file = paste(work_path, "processed_data", "WoS_controlSet_Rdata.csv", sep = "/"), row.names = FALSE)
#write_parquet(df, file = paste(work_path, "processed_data", "WoS_controlSet_Rdata.parquet", sep = "/"))
print("exported successfully")

# load data to work with
load(paste(work_path, "processed_data", "WoS_controlSet_Rdata.Rda", sep = "/"))

# seeing format
dim(df)
View(df)

# removing duplicates (if they exist)
df <- df %>% distinct()
dim(df)

# limiting the time-span of the analysis to 1960-2022
df <- df %>% filter(PY >= 2000, PY <= 2022)

# simple analysis
results <- biblioAnalysis(df)
summary(results, k = 10, pause = FALSE, width = 130)

# save Rdata
save(results, file = paste(work_path, "processed_data", "Results_controlSet_Rdata.Rda", sep = "/"))

# save results to do the plots in python
# data = data.frame(Countries = results$CO, Years = results$Years, SubjectCategory = df$SC)
# write.csv(data, file = paste(work_path, "Rdata_Countries_Years.csv", sep = "/"), row.names = FALSE)