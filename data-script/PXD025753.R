# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD025753/"

# Read relevant data
df <- readxl::read_excel("../data/PXD025753/41388_2021_2017_MOESM11_ESM.xlsx", skip = 1)


name <- "PXD025753_hs_ISGylation_ISG15_substrates_MDA-MB-231"
description <- "PXD025753_hs_ISGylation_ISG15_substrates_MDA-MB-231"
genes <- df %>% dplyr::select(`Gene name`) %>% distinct() %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD025753_hs_ISGylation_ISG15_substrates_MDA-MB-231.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))
