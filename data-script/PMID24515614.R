# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PMID24515614/"

# Copy genes from Table 1
genes <- c("NP_001257411",
           "NP_002800",
           "NP_055629",
           "NP_057250",
           "NP_056990",
           "NP_148980",
           "NP_006588",
           "NP_694881",
           "NP_003741",
           "NP_003743",
           "NP_001393",
           "NP_001949",
           "NP_001395",
           "NP_001952",
           "NP_031398",
           "NP_055426",
           "NP_115570",
           "NP_003175",
           "NP_003394",
           "NP_003277",
           "NP_001138829",
           "NP_055205",
           "NP_114032",
           "NP_004492",
           "NP_037418",
           "NP_444271",
           "NP_002964",
           "NP_003904",
           "NP_660155",
           "NP_001033707",
           "NP_001120674",
           "NP_004102",
           "NP_852091",
           "NP_001008938",
           "NP_055571",
           "NP_001361",
           "NP_055874",
           "NP_003321",
           "NP_001087240")




name <- "PMID24515614_hs_DSSylation_substrates"
description <- "PMID24515614_hs_DSSylation_substrates from table 1"
genes <- AnnotationDbi::select(org.Hs.eg.db::org.Hs.eg.db, genes, "SYMBOL", "ACCNUM") %>% filter(!is.na(SYMBOL)) %>% select(SYMBOL) %>% unlist() %>% unname() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PMID24515614_hs_DSSylation_substrates.gmt", sep = ""))

