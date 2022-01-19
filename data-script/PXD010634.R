# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD010634/"

zipF <- paste(dir, "mmc1.zip", sep = "")
outDir <- paste(dir, "mmc1", sep = "")
unzip(zipF,exdir=outDir, overwrite = FALSE)

zipF <- "../data/PXD010634/mmc1/mmc1/140172_1_supp_208100_pfjwxp.zip"
outDir <- paste(dir, "140172_1_supp_208100_pfjwxp", sep = "")
unzip(zipF,exdir=outDir, overwrite = FALSE)

# Read relevant data
df <- readxl::read_excel(path = "../data/PXD010634/140172_1_supp_208100_pfjwxp/Table S3 - Protein-based enrichment - SrtA vs YnMyr.xlsx", sheet = 7, skip = 1, n_max = 57)


name <- "PXD010634_hs_Lipidation_Myr_substrates"
description <- "PXD010634_hs_Lipidation_Myr_substrates"
genes <- df %>% select(`Gene names`) %>% unlist() %>% unname() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD010634_hs_Lipidation_Myr_substrates.gmt", sep = ""))


