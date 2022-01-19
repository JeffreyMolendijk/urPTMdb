# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD018345/"

# Read relevant data
df <- readxl::read_excel("../data/PXD018345/41467_2021_26061_MOESM4_ESM.xlsx", sheet = 1, skip = 2)


name <- "PXD018345_hs_ISGylation_substrates"
description <- "From consensus supplementary table 1"
genes <- df %>% select(`Gene names`) %>% unlist() %>% unname() %>% strsplit(., ";") %>% unlist() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD018345_hs_ISGylation_substrates.gmt", sep = ""))

