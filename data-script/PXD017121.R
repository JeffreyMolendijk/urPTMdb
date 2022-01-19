# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD017121/"

# Read relevant data
df <- readxl::read_excel("../data/PXD017121/1-s2.0-S1672022921000735-mmc7.xlsx", skip = 2, sheet = "Table S1D")


name <- "PXD017121_mm_Kcr_sites_Yuan"
description <- "Summarized lysine crotonylation (Kcr) from Yuan et al, Table S1D, describing Yuan et al"
genes <- df[df[,3] == 1, ] %>% filter(!is.na(`Gene name`)) %>% .[,2] %>% distinct() %>% unlist() %>% unname() %>% strsplit(split = ";") %>% unlist %>% unique

gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD017121_mm_Kcr_sites_Yuan.gmt", sep = ""))


name <- "PXD017121_hs_Kcr_sites_Xu"
description <- "Summarized lysine crotonylation (Kcr) from Yuan et al, Table S1D, describing Xu et al"
genes <- df[df[,4] == 1, ] %>% filter(!is.na(`Gene name`)) %>% .[,2] %>% distinct() %>% unlist() %>% unname() %>% strsplit(split = ";") %>% unlist %>% unique %>% toupper

gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD017121_hs_Kcr_sites_Xu.gmt", sep = ""))


name <- "PXD017121_hs_Kcr_sites_Wei"
description <- "Summarized lysine crotonylation (Kcr) from Yuan et al, Table S1D, describing Wei et al"
genes <- df[df[,5] == 1, ] %>% filter(!is.na(`Gene name`)) %>% .[,2] %>% distinct() %>% unlist() %>% unname() %>% strsplit(split = ";") %>% unlist %>% unique %>% toupper

gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD017121_hs_Kcr_sites_Wei.gmt", sep = ""))



name <- "PXD017121_mm_Kcr_sites_Wu"
description <- "Summarized lysine crotonylation (Kcr) from Yuan et al, Table S1D, describing Wu et al"
genes <- df[df[,6] == 1, ] %>% filter(!is.na(`Gene name`)) %>% .[,2] %>% distinct() %>% unlist() %>% unname() %>% strsplit(split = ";") %>% unlist %>% unique %>% toupper

gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD017121_hs_Kcr_sites_Wu.gmt", sep = ""))


name <- "PXD017121_hs_Kcr_sites_Huang"
description <- "Summarized lysine crotonylation (Kcr) from Yuan et al, Table S1D, describing Huang et al"
genes <- df[df[,7] == 1, ] %>% filter(!is.na(`Gene name`)) %>% .[,2] %>% distinct() %>% unlist() %>% unname() %>% strsplit(split = ";") %>% unlist %>% unique %>% toupper

gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD017121_hs_Kcr_sites_Huang.gmt", sep = ""))



name <- "PXD017121_hs_Kcr_sites_Chen"
description <- "Summarized lysine crotonylation (Kcr) from Yuan et al, Table S1D, describing Chen et al"
genes <- df[df[,8] == 1, ] %>% filter(!is.na(`Gene name`)) %>% .[,2] %>% distinct() %>% unlist() %>% unname() %>% strsplit(split = ";") %>% unlist %>% unique %>% toupper

gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD017121_hs_Kcr_sites_Chen.gmt", sep = ""))


rm(list = c("df", "description", "genes", "gs"))