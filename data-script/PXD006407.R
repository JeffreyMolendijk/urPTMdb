# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD006407/"

# Read relevant data
df <- readxl::read_excel("../data/PXD006407/pmic12932-sup-0002-tables1.xlsx", skip = 19)


name <- "PXD006407_hs_Kcr_sites"
description <- "Proteins with at least 1 lysine crotonylation (Kcr) site"
genes <- df[,1] %>% unlist %>% unname %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD006407_hs_Kcr_sites.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))
