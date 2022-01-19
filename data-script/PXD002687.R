# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD002687/"


# Read relevant data
df <- readxl::read_excel("../data/PXD002687/41467_2014_BFncomms5919_MOESM1091_ESM.xlsx", skip = 3, sheet = "Sheet 3")


name <- "PXD002687_hs_Lipidation_myristoylation_substrates"
description <- "PXD002687_hs_Lipidation_myristoylation_substrates"
genes <- df[c(1:27,30:37),2] %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD002687_hs_Lipidation_myristoylation_substrates.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))
