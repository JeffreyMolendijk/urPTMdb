# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PMID31767537/"

# Read relevant data
df <- readxl::read_excel("../data/PMID31767537/mmc2.xlsx")


name <- "PMID31767537_hs_LactoylLys_substrates"
description <- "PMID31767537_hs_LactoylLys_substrates"
genes <- df %>% select(`Gene Symbol`) %>% unlist() %>% unname() %>% strsplit(., split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PMID31767537_hs_LactoylLys_substrates.gmt", sep = ""))

