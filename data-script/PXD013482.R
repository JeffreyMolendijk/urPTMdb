# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD013482/"

# Read relevant data
df <- readxl::read_excel("../data/PXD013482/pr9b00239_si_002.xlsx", skip = 1)

name <- "PXD013482_hs_ProlylHydroxylation_DMOGtreatment_up"
description <- "Proteins with an increase in the half-life in DMOG-treated when compared to control cells; F.C., Fold change; DMOG/CRL ≥ 1.20"
genes <- df[,2] %>% distinct()  %>% unlist() %>% unname() %>% strsplit(., split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD013482_hs_ProlylHydroxylation_DMOGtreatment_up.gmt", sep = ""))



df <- readxl::read_excel("../data/PXD013482/pr9b00239_si_003.xlsx", skip = 1)

name <- "PXD013482_hs_ProlylHydroxylation_DMOGtreatment_down"
description <- "Proteins with a decrease in the half-life in DMOG-treated when compared to control cells; F.C., Fold change; DMOG/CRL < 0.80"

genes <- df[,2] %>% distinct()  %>% unlist() %>% unname() %>% strsplit(., split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD013482_hs_ProlylHydroxylation_DMOGtreatment_down.gmt", sep = ""))



rm(list = c("df", "description", "genes", "gs"))



