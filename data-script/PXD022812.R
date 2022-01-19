# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD022812/"

# Read relevant data
df <- readxl::read_excel("../data/PXD022812/mmc2.xlsx", skip = 0, sheet = 4)



name <- "PXD022812_hs_Neddylation_substrates_canonical_HCT-116"
description <- "substrate under canonical NEDDylation conditions"
genes <- df[,5] %>% distinct() %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD022812_hs_Neddylation_substrates_canonical_HCT-116.gmt", sep = ""))



name <- "PXD022812_hs_Neddylation_substrates_atypical_HCT-116"
description <- "substrate under atypical NEDDylation conditions"
genes <- df[,2] %>% distinct() %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD022812_hs_Neddylation_substrates_atypical_HCT-116.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))
