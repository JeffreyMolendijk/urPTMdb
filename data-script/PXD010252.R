# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD010252/"

# Read relevant data
df <- readxl::read_excel(path = "../data/PXD010252/41467_2018_7306_MOESM6_ESM.xlsx", sheet = 1, skip = 1, na = c("", "NA", "NaN"))


name <- "PXD010252_hs_Citrullination_sites_liver"
description <- "PXD010252_hs_Citrullination_sites_liver"
genes <- df %>% select(`Gene name`) %>% unlist() %>% unname() %>% strsplit(., split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD010252_hs_Citrullination_sites_liver.gmt", sep = ""))



# Read relevant data
df <- readxl::read_excel(path = "../data/PXD010252/41467_2018_7306_MOESM6_ESM.xlsx", sheet = 2, skip = 1, na = c("", "NA", "NaN"))


name <- "PXD010252_hs_Citrullination_sites_liver_metastasis"
description <- "PXD010252_hs_Citrullination_sites_liver_metastasis"
genes <- df %>% select(`Gene name`) %>% unlist() %>% unname() %>% strsplit(., split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD010252_hs_Citrullination_sites_liver_metastasis.gmt", sep = ""))
