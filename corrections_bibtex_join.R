library(bibliometrix)
library(dplyr)
library(ggplot2)

work_path <- "C:\\Users\\isabe\\Desktop\\Tese"

importTextFilesAsDataFrame <- function(folder_path, prefix) {
  # list text files in the specified folder
  matching_files <- list.files(folder_path, pattern = paste0("^", prefix, ".*\\.bib$"))
  print(matching_files)
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

files_path <- importTextFilesAsDataFrame(paste(work_path, "corrections_data", sep = "/"), prefix = "savedrecs")

# import files
df <- convert2df(file = files_path, dbsource = "wos", format = "bibtex")

# save Rdata
save(df, file = paste(work_path, "processed_data", "WoS_corrections_Rdata.Rda", sep = "/"))
# save csv
write.csv(df, file = paste(work_path, "processed_data", "WoS_corrections_Rdata.csv", sep = "/"), row.names = FALSE)

# load data to work with
load(paste(work_path, "processed_data", "WoS_corrections_Rdata.Rda", sep = "/"))

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
save(results, file = paste(work_path, "processed_data", "Results_corrections_Rdata.Rda", sep = "/"))

# save results to do the plots in python
# data = data.frame(Countries = results$CO, Years = results$Years, SubjectCategory = df$SC)
# write.csv(data, file = paste(work_path, "Rdata_Countries_Years.csv", sep = "/"), row.names = FALSE)