# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD024233/"

# Read relevant data
df <- readxl::read_excel(path = "../data/PXD024233/1-s2.0-S1097276521007176-mmc2.xlsx", sheet = 'Sheet22_Fig 7B COMPARISON ', skip = 0, na = c(""))


name <- "PXD024233_hs_ADPribosylation_readers_Kliza"
description <- "PXD024233, genes from Table sheet 22 from Kliza et al."
genes <- df %>% filter(!is.na(KLIZA)) %>% select(`Gene name`) %>% unlist() %>% unname() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD024233_hs_ADPribosylation_readers_Kliza.gmt", sep = ""))





name <- "PXD024233_hs_ADPribosylation_readers_Dasovich"
description <- "PXD024233, genes from Table sheet 22 from Dasovich et al."
genes <- df %>% filter(!is.na(DASOVICH)) %>% select(`Gene name`) %>% unlist() %>% unname() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD024233_hs_ADPribosylation_readers_Dasovich.gmt", sep = ""))




name <- "PXD024233_hs_ADPribosylation_readers_Lam"
description <- "PXD024233, genes from Table sheet 22 from Lam et al."
genes <- df %>% filter(!is.na(LAM)) %>% select(`Gene name`) %>% unlist() %>% unname() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD024233_hs_ADPribosylation_readers_Lam.gmt", sep = ""))


