# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD022078/"

# Read relevant data
df <- readxl::read_excel("../data/PXD022078/id0c00740_si_002.xlsx", skip = 0, sheet = "Hela_pro-N6pA_DMSO")


name <- "PXD022078_hs_AMPylation_substrates_HeLa_pro-N6pa_treatment"
description <- "PXD022078_hs_AMPylation_substrates_HeLa_pro-N6pa_treatment"
genes <- df[(df[,5] == "+") & (df[,10] > 1), ][4] %>% unlist %>% unname %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD022078_hs_AMPylation_substrates_HeLa_pro-N6pa_treatment.gmt", sep = ""))



