# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD027454/"

# Read relevant data
df <- readxl::read_excel(path = "../data/PXD027454/mmc2.xlsx", sheet = "Table S2", skip = 1, na = c("", "NA", "NaN"))


name <- "PXD027454_mm_ADPribosylation_sites_liver"
description <- "PXD027454_mm_ADPribosylation_sites_liver from Table S2"
genes <- df %>% select(`Gene Position`) %>% unlist() %>% unname() %>% sub(" \\[.*", "", .) %>% unique
genes <- genes[!is.na(genes)]
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD027454_mm_ADPribosylation_sites_liver.gmt", sep = ""))



# Read relevant data
df <- readxl::read_excel(path = "../data/PXD027454/mmc2.xlsx", sheet = "Table S3", skip = 1, na = c("", "NA", "NaN"))


name <- "PXD027454_mm_ADPribosylation_sites_spleen"
description <- "PXD027454_mm_ADPribosylation_sites_spleen from Table S3"
genes <- df %>% select(`Gene Position`) %>% unlist() %>% unname() %>% sub(" \\[.*", "", .) %>% unique
genes <- genes[!is.na(genes)]
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD027454_mm_ADPribosylation_sites_spleen.gmt", sep = ""))

