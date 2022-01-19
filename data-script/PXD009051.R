# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD009051/"

# Read relevant data
df <- readxl::read_excel("../data/PXD009051/pr7b00843_si_003.xlsx", skip = 1)



name <- "PXD009051_hs_UFMylation_UFBP1_substrates"
description <- "PXD009051_hs_UFMylation_UFBP1_substrates"
genes <- df %>% filter(`Significant` == "+") %>% dplyr::select(`Gene names`) %>% distinct() %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD009051_hs_UFMylation_UFBP1_substrates.gmt", sep = ""))


rm(list = c("df", "description", "genes", "gs"))
