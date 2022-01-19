# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD021143/"

# Read relevant data
df <- readxl::read_excel("../data/PXD021143/41467_2021_26189_MOESM4_ESM.xlsx", sheet = 1, skip = 2)


name <- "PXD021143_hs_Neddylation_NEDD8bait_HEK293T"
description <- "Enriched in Figure 4B"
genes <- df %>% filter(Nedd8 > 0.2) %>% select(`Gene names`) %>% unlist() %>% unname() %>% strsplit(., ";") %>% unlist() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD021143_hs_Neddylation_NEDD8bait_HEK293T.gmt", sep = ""))



name <- "PXD021143_hs_Neddylation_pS65NEDD8bait_HEK293T"
description <- "Enriched in Figure 4B"
genes <- df %>% filter(`Nedd8 pS65` > 0.2) %>% select(`Gene names`) %>% unlist() %>% unname() %>% strsplit(., ";") %>% unlist() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD021143_hs_Neddylation_pS65NEDD8bait_HEK293T.gmt", sep = ""))



name <- "PXD021143_hs_Neddylation_nhpS65NEDD8bait_HEK293T"
description <- "Enriched in Figure 4B"
genes <- df %>% filter(`Nedd8 nhpS65` > 0.2) %>% select(`Gene names`) %>% unlist() %>% unname()  %>% strsplit(., ";") %>% unlist() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD021143_hs_Neddylation_nhpS65NEDD8bait_HEK293T.gmt", sep = ""))



df <- readxl::read_excel("../data/PXD021143/41467_2021_26189_MOESM4_ESM.xlsx", sheet = 2, skip = 2)

name <- "PXD021143_hs_Neddylation_NEDD8bait_SHSY5Y"
description <- "Enriched in Figure 4B"
genes <- df %>% filter(Nedd8 > 0.2) %>% select(`Gene names`) %>% unlist() %>% unname() %>% strsplit(., ";") %>% unlist() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD021143_hs_Neddylation_NEDD8bait_SHSY5Y.gmt", sep = ""))



name <- "PXD021143_hs_Neddylation_pS65NEDD8bait_SHSY5Y"
description <- "Enriched in Figure 4B"
genes <- df %>% filter(`Nedd8 pS65` > 0.2) %>% select(`Gene names`) %>% unlist() %>% unname() %>% strsplit(., ";") %>% unlist() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD021143_hs_Neddylation_pS65NEDD8bait_SHSY5Y.gmt", sep = ""))



name <- "PXD021143_hs_Neddylation_nhpS65NEDD8bait_SHSY5Y"
description <- "Enriched in Figure 4B"
genes <- df %>% filter(`Nedd8 nhpS65` > 0.2) %>% select(`Gene names`) %>% unlist() %>% unname()  %>% strsplit(., ";") %>% unlist() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD021143_hs_Neddylation_nhpS65NEDD8bait_SHSY5Y.gmt", sep = ""))

