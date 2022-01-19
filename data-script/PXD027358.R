# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD027358/"

# Read relevant data
df <- readxl::read_excel(path = "../data/PXD027358/bi1c00369_si_004.xlsx", sheet = "sites", skip = 0, na = c("", "NA", "NaN"))


name <- "PXD027358_hs_Citrullination_sites_PAD2_oe"
description <- "PXD027358_hs_Citrullination_sites_PAD2_oe in HEK293T cells, PAD2 overexpression"
genes <- df %>% select(parent_protein) %>% unlist() %>% unname() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD027358_hs_Citrullination_sites_PAD2_oe.gmt", sep = ""))

