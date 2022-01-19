# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD005414/"

# Read relevant data
df <- readxl::read_excel("../data/PXD005414/41422_2018_BFcr2017149_MOESM8_ESM.xlsx", skip = 26, sheet = "Dataset S1B")


name <- "PXD005414_hs_Khib_sites_HeLa"
description <- "High-confidence Khib (Lysine 2-hydroxyisobutyrylation) sites identified in at least 2 samples"
genes <- df[,6] %>% unlist %>% unname %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD005414_hs_Khib_sites_HeLa.gmt", sep = ""))
