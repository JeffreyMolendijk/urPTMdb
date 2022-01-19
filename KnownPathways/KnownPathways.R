# Load packages
library(tidyverse)

df <- readxl::read_excel(path = "KnownPathways.xlsx")


for(i in 1:nrow(df)){
  
  print(df[i,1])

  url <- df[i,2] %>% unlist
  name <- paste(df[i,1], ".gmt", sep = "")

  curl::curl_download(url = url, destfile = name)
  
}
