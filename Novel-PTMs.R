### Novel-PTMs.R
### This script is used to setup the folders and files required to make a PTM database

library(tidyverse)

### Read Novel-PTMs.xlsx file containing PRIDE accessions and links to the data
df <- readxl::read_excel(path = "Novel-PTMs.xlsx", sheet = "Novel-PTMs")


### Create study folders for each accession in the 'study' column
### Create a .R file for each folder, in which we will process the data later
for(i in 1:nrow(df)){
  
  dir.create(paste("data/",df$study[i],"/", sep = ""), showWarnings = FALSE)
  
  file <- paste("data-script/", df$study[i],".R", sep = "")
  
  if(!file.exists(file)){
 
     file.create(file)
    
  }
  
}


# Downloader for files in the 'file_download_direct" column
dl_files <- df$file_download_direct[!is.na(df$file_download_direct)] %>% strsplit(., split = "\\|") %>% unlist
dl_study <- rep(df$study[!is.na(df$file_download_direct)], lapply(df$file_download_direct[!is.na(df$file_download_direct)] %>% strsplit(., split = "\\|"), length) %>% unlist())

for(i in 1:length(dl_study)){
  
  print(i)
  print(paste("running study: ", dl_study[i], sep = ""))
  
  url <- dl_files[i]
  dir <- paste("./data", dl_study[i], sub(".*\\/","",dl_files[i]), sep = "/")
  
  if(dir %in% list.files(path = ".", recursive = TRUE, full.names = TRUE)){next}
  
  curl::curl_download(url = url, destfile = dir)
  
}

# Run KnownPathways folder
# Setup code to run scripts in KnownPathways folder
setwd("./KnownPathways/")
scripts <- list.files(".", pattern = ".R$")

for(i in 1:length(scripts)){
  print(paste("running script: ", scripts[i], sep = ""))
  source(file = scripts[i])
}

setwd("./..")

rm(list = ls())


# Moving data from KnownPathways to data
# list.files of KnownPathways
# check if folder + file already exists in data/
# copy file to folder if it doesn't exist yet
current_folder <- "./KnownPathways/"
new_folder <- "./data/KnownPathways/"
dir.create("data/KnownPathways/", showWarnings = FALSE)
list_of_files <- list.files(current_folder, "", recursive = TRUE) 
file.copy(file.path(current_folder,list_of_files, fsep = ""), file.path(new_folder,list_of_files, fsep = ""))



# Moving data from data-manual to corresponding folders
# list.files of data-manual
# check if folder + file already exists in data/
# copy file to folder if it doesn't exist yet
current_folder <- "./data-manual/"
new_folder <- "./data/"
list_of_files <- list.files(current_folder, "", recursive = TRUE) 
file.copy(file.path(current_folder,list_of_files, fsep = ""), file.path(new_folder,list_of_files, fsep = ""))


# Setup code to run scripts in data-script folder
setwd("./data-script/")
scripts <- list.files(".", pattern = ".R$")

# Run following line to ignore the data-manual scripts.
scripts <- scripts[!(scripts %in% paste(list.dirs(path = "../data-manual/", full.names = FALSE, recursive = FALSE), ".R", sep = ""))]

for(i in 1:length(scripts)){
  print(paste("running script: ", scripts[i], sep = ""))
  source(file = scripts[i])
}

setwd("./..")

rm(list = ls())


# Find all created .gmt files and combine then into a final .gmt file
gmt <- list.files("./data", pattern = ".gmt$", recursive = TRUE, full.names = TRUE)
gmtlist <- list()

for(i in 1:length(gmt)){
  gmtlist[[i]] <- read.delim(file = as.character(gmt[i]), header = FALSE)
}

gmtdf <- do.call(plyr::rbind.fill, gmtlist)

write_tsv(gmtdf, file = "urptmdb_latest.gmt")
