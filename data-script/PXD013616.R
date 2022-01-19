# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD013616/"

# Read relevant data
df <- readxl::read_excel("../data/PXD013616/aay4697_table_s1.xlsx", sheet = "2. Up-regulated", skip = 1)

name <- "PXD013616_hs_Kcr_up_CDYL_ko"
description <- "Protein with an upregulated lysine crotonylation site in chromodomain Y–like (CDYL)"
genes <- df[,6] %>% unlist %>% unname %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD013616_hs_Kcr_up_CDYL_ko.gmt", sep = ""))



df <- readxl::read_excel("../data/PXD013616/aay4697_table_s1.xlsx", sheet = "3. Down-regulated", skip = 1)

name <- "PXD013616_hs_Kcr_down_CDYL_ko"
description <- "Proteins with a decrease in the half-life in DMOG-treated when compared to control cells; F.C., Fold change; DMOG/CRL < 0.80"
genes <- df[,6] %>% unlist %>% unname %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD013616_hs_Kcr_down_CDYL_ko.gmt", sep = ""))


rm(list = c("df", "description", "genes", "gs"))



