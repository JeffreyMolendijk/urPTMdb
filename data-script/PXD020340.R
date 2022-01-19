# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD020340/"

# Read relevant data
df <- readxl::read_excel("../data/PXD020340/elife-60480-supp1.xlsx", sheet = 1, skip = 5)


name <- "PXD020340_hs_ADPribosylation_substrates"
description <- "From supplementary table 1"
genes <- df %>% select(Abbreviations) %>% unlist() %>% unname() %>% sub("_.*", "", .) %>% unlist() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD020340_hs_ADPribosylation_substrates.gmt", sep = ""))


name <- "PXD020340_hs_ADPribosylation_substrates_bothrepeats"
description <- "From supplementary table 1, only the 85 proteins detected in both repeats"
genes <- df[1:85,] %>% select(Abbreviations) %>% unlist() %>% unname() %>% sub("_.*", "", .) %>% unlist() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD020340_hs_ADPribosylation_substrates_bothrepeats.gmt", sep = ""))
