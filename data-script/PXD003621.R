# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD003621/"

# Read relevant data
df <- readxl::read_excel("../data/PXD003621/cvw081supp_table1.xlsx", skip = 0, sheet = "All targets")



name <- "PXD003621_hs_ProlylHydroxylation_substrates_DMOG_treatment"
description <- "difference between DMOG treatment and WT"
genes <- df[,3] %>% distinct()  %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD003621_hs_ProlylHydroxylation_substrates_DMOG_treatment.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))
