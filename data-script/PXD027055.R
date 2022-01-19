# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD027055/"

zipped_csv_names <- grep('modification', unzip('../data/PXD027055/Olga%20et%20McDonald%20data.zip', list=TRUE)$Name, ignore.case=TRUE, value=TRUE)
unzip('../data/PXD027055/Olga%20et%20McDonald%20data.zip', files=zipped_csv_names, exdir = paste(dir, zipped_csv_names, sep = ""))


# Read relevant data
df <- readxl::read_excel(path = "../data/PXD027055/Olga 29-08-19 modificationSpecificPeptides.xlsx/Olga 29-08-19 modificationSpecificPeptides.xlsx", na = c("", "NA", "NaN"))


name <- "PXD027055_hs_Citrullination_sites"
description <- "PXD027055_hs_Citrullination_sites"
genes <- df %>% filter(`citrullination of arginine site IDs` != 0) %>% select(`Gene Names`) %>% unlist() %>% unname() %>% strsplit(., split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD027055_hs_Citrullination_sites.gmt", sep = ""))
