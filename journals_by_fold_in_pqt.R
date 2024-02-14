library(bibliometrix)
library(dplyr)
library(ggplot2)

work_path <- "C:\\Users\\isabe\\Desktop\\Tese\\thesis_data\\filtered_journals"

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

files_path <- importTextFilesAsDataFrame(paste(work_path, "journals100-499_P1", sep = "/"), prefix = "savedrecs")

# import files
df <- convert2df(file = files_path, dbsource = "wos", format = "bibtex")


work_path <- "C:\\Users\\isabe\\Desktop\\Tese\\thesis_data"
# save Rdata
save(df, file = paste(work_path, "processed_data", "WoS_journals100-499_P1_Rdata.Rda", sep = "/"))
# save csv
write.csv(df, file = paste(work_path, "processed_data", "WoS_journals100-499_P1_Rdata.csv", sep = "/"), row.names = FALSE)

library(arrow)
write_parquet(df, paste(work_path, "processed_data", "WoS_journals100-499_P1_Rdata.parquet", sep = "/")) #files



