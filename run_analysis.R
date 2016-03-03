
#This function will recurse through a web of UCI directories and ingest the data files into a single dataframe.
#There are 2 parts that aren't independently variable:
# - the parent directories have to be hard coded ('test' or 'train')
# - the column names have to be hardcoded.
#The function returns a data frame of column types Factor and int.

run_analysis <- function() {
  #directories <- c("UCI/test/", "UCI/train/")
  #hard code the parent directory:
  directories <- c("UCI/test/")
  for (d in directories) {
    #create a List of file names in the child directories.
    file_list <- list.files(d, recursive=TRUE)
    for (file in file_list) {
      #check if the data frame already exists in the environment.
      if (!exists("dataset")) {
        #paste together the directory/file name (same as in else block)
        dataset <-
          read.csv(paste0(d, file))
        colnames(dataset) <- file
      } else {
       tempData <-
         read.csv(paste0(d, file))
        colnames(tempData) <- file
        dataset <- cbind(dataset, tempData)
        rm(tempData)
      }
    }
  }

#Hard coded column names.  Would like to fix this:  
colnames(dataset) <- (c("test.bodyaccX", "test.bodyaccY", "test.bodyaccZ", "test.bodygyroX", "test.bodygyroY", "test.bodygyroZ", "test.totalaccX", "test.totalaccY", "test.totalaccZ", "test.subject", "test.X", "test.Y"))

  return (dataset)

}