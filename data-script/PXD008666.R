# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD008666/"

# Read relevant data
df <- readxl::read_excel("../data/PXD008666/41589_2018_77_MOESM5_ESM.xlsx", sheet = 2)

genes <- df %>% filter(`in vitro MYR (octapeptide)` == "MYR") %>% select(`Protein Id`) %>% unlist() %>% unname() %>% unique


name <- "PXD008666_hs_Lipidation_Myr"
description <- "PXD008666_hs_Lipidation_Myr_SrtA_selectivity"
genes <- AnnotationDbi::select(org.Hs.eg.db::org.Hs.eg.db, genes, "SYMBOL", "UNIPROT") %>% filter(!is.na(SYMBOL)) %>% select(SYMBOL) %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD008666_hs_Lipidation_Myr.gmt", sep = ""))

