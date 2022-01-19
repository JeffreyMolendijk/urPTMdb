# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD018299/"

# Read relevant data
df <- readxl::read_excel("../data/PXD018299/41416_2020_1167_MOESM6_ESM.xlsx", sheet = 1, skip = 3)


name <- "PXD018299_hs_ISGylation_substrates_Zhao"
description <- "Cell culture - MS, HeLa/overexpression of epitope tagged ISG15 and E1/E2 enzymes + IFN Beta treatment"
genes <- df[,1] %>% unlist() %>% unname() %>% unique 
genes <- genes[!is.na(genes)]
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

Sys.sleep(1)

GSEABase::toGmt(gs, con = paste(dir, "PXD018299_hs_ISGylation_substrates_Zhao.gmt", sep = ""))


name <- "PXD018299_hs_ISGylation_substrates_Giannakopoulos"
description <- "Cell culture - MS, MEFs and U937 + IFN, ISG15 IP"
genes <- df[,3] %>% unlist() %>% unname() %>% unique
genes <- genes[!is.na(genes)]
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

Sys.sleep(1)

GSEABase::toGmt(gs, con = paste(dir, "PXD018299_hs_ISGylation_substrates_Giannakopoulos.gmt", sep = ""))


name <- "PXD018299_mm_ISGylation_substrates_Giannakopoulos"
description <- "Cell culture - MS, MEFs and U937 + IFN, ISG15 IP"
genes <- df[,5] %>% unlist() %>% unname() %>% unique
genes <- genes[!is.na(genes)]
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

Sys.sleep(1)

GSEABase::toGmt(gs, con = paste(dir, "PXD018299_mm_ISGylation_substrates_Giannakopoulos.gmt", sep = ""))


name <- "PXD018299_hs_ISGylation_substrates_Takeuchi"
description <- "Cell culture - MS, HeLa overexpressing E1, E2 and tagged ISG15"
genes <- df[,8] %>% unlist() %>% unname() %>% unique
genes <- genes[!is.na(genes)]
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

Sys.sleep(1)

GSEABase::toGmt(gs, con = paste(dir, "PXD018299_hs_ISGylation_substrates_Takeuchi.gmt", sep = ""))



name <- "PXD018299_hs_ISGylation_substrates_Wong"
description <- "Cell culture - MS, FLAG-ISG15-expressing A549 cells on IFN-Beta Induction"
genes <- df[,11] %>% unlist() %>% unname() %>% unique
genes <- genes[!is.na(genes)]
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

Sys.sleep(1)

GSEABase::toGmt(gs, con = paste(dir, "PXD018299_hs_ISGylation_substrates_Wong.gmt", sep = ""))




name <- "PXD018299_hs_ISGylation_substrates_Durfee"
description <- "Cell culture - Immunoblotting of HEK293/HeLa lysate"
genes <- df[,14] %>% unlist() %>% unname() %>% unique
genes <- genes[!is.na(genes)]
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

Sys.sleep(1)

GSEABase::toGmt(gs, con = paste(dir, "PXD018299_hs_ISGylation_substrates_Durfee.gmt", sep = ""))


name <- "PXD018299_hs_ISGylation_substrates_Other"
description <- "Mostly Western Blot based"
genes <- df[,20] %>% unlist() %>% unname() %>% unique
genes <- genes[!is.na(genes)]
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

Sys.sleep(1)

GSEABase::toGmt(gs, con = paste(dir, "PXD018299_hs_ISGylation_substrates_Other.gmt", sep = ""))




name <- "PXD018299_hs_ISGylation_substrates_digly_Pinto-Fernandez"
description <- "diGly based"
genes <- df[,23] %>% unlist() %>% unname() %>% unique
genes <- genes[!is.na(genes)]
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

Sys.sleep(1)

GSEABase::toGmt(gs, con = paste(dir, "PXD018299_hs_ISGylation_substrates_digly_Pinto-Fernandez.gmt", sep = ""))



name <- "PXD018299_hs_ISGylation_substrates_ISG15-IP_Pinto-Fernandez"
description <- "ISG15-IP"
genes <- df[,24] %>% unlist() %>% unname() %>% unique
genes <- genes[!is.na(genes)]
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

Sys.sleep(1)

GSEABase::toGmt(gs, con = paste(dir, "PXD018299_hs_ISGylation_substrates_ISG15-IP_Pinto-Fernandez.gmt", sep = ""))




