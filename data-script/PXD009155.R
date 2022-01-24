# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD009155/"

# Read relevant data
df <- readxl::read_excel("../data/PXD009155/41557_2019_237_MOESM2_ESM.xlsx", sheet = 2)


name <- "PXD009155_hs_Lipidation_prenylation_substrates"
description <- "PXD009155_hs_Lipidation_prenylation_substrates from supplementary data 1"
genes <- df %>% select(`Gene Names`) %>% unlist %>% unname %>% strsplit(., split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD009155_hs_Lipidation_prenylation_substrates.gmt", sep = ""))

