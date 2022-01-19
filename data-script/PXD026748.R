# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD026748/"

# Read relevant data
df <- readxl::read_excel(paste(dir, "41590_2021_1035_MOESM3_ESM.xlsx", sep = ""), skip = 1, sheet = "Table 3")



name <- "PXD026748_hs_ISGylation_substrates_down_in_ISG15_ko"
description <- "PXD026748_hs_ISGylation_substrates_down_in_ISG15_ko"
genes <- df %>% filter(`Significant (FDR=0.05 S0=1)` == "+" & `Log2 (WT/ISG15 KO)` > 0) %>% dplyr::select(`Gene name`) %>% distinct()  %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD026748_hs_ISGylation_substrates_down_in_ISG15_ko.gmt", sep = ""))



name <- "PXD026748_hs_ISGylation_substrates_up_in_ISG15_ko"
description <- "PXD026748_hs_ISGylation_substrates_up_in_ISG15_ko"
genes <- df %>% filter(`Significant (FDR=0.05 S0=1)` == "+" & `Log2 (WT/ISG15 KO)` < 0) %>% dplyr::select(`Gene name`) %>% distinct()  %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD026748_hs_ISGylation_substrates_up_in_ISG15_ko.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))
