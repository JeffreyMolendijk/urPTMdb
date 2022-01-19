# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD028902/"

zipF <- paste(dir, "cells-10-02927-s001.zip", sep = "")
outDir <- paste(dir, "cells-10-02927-s001", sep = "")
unzip(zipF,exdir=outDir, overwrite = FALSE)

# Read relevant data
df <- readxl::read_excel(path = "../data/PXD028902/cells-10-02927-s001/Buch-Larsen_TableS2.xlsx", sheet = 1, skip = 0)


name <- "PXD028902_hs_ADPribosylation_substrates"
description <- "PXD028902_hs_ADPribosylation_substrates"
genes <- df %>% select(`Gene name`) %>% unlist() %>% unname() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD028902_hs_ADPribosylation_substrates.gmt", sep = ""))


