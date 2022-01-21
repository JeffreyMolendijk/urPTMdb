# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD005895/"

# Read relevant data
df <- readxl::read_excel("../data/PXD005895/mmc4.xlsx", sheet = 2, skip = 3)


name <- "PXD005895_mm_HMGylation_substrates"
description <- "From supplementary table 3, sheet 2"
genes <- df %>% select(`Gene Symbol`) %>% unlist() %>% unname() %>% strsplit(., ";") %>% unlist() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD005895_mm_HMGylation_substrates.gmt", sep = ""))



name <- "PXD005895_mm_HMGylation_substrates_significant"
description <- "From supplementary table 3, sheet 2, first 508 rows"
genes <- df[1:508,] %>% select(`Gene Symbol`) %>% unlist() %>% unname() %>% strsplit(., ";") %>% unlist() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD005895_mm_HMGylation_substrates_significant.gmt", sep = ""))



# Read relevant data
df <- readxl::read_excel("../data/PXD005895/mmc5.xlsx", sheet = 2, skip = 2)


name <- "PXD005895_mm_Kglu_substrates"
description <- "From supplementary table 4, sheet 2"
genes <- df %>% select(`Gene Symbol`) %>% unlist() %>% unname() %>% strsplit(., ";") %>% unlist() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD005895_mm_Kglu_substrates.gmt", sep = ""))

