# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD026238/"

# Read relevant data
df <- readxl::read_excel(path = "../data/PXD026238/1-s2.0-S0945053X21000652-mmc2.xlsx", skip = 1, na = c("", "NA", "NaN"))


name <- "PXD026238_mm_Citrullination_sites"
description <- "PXD026238_mm_Citrullination_sites"
genes <- df %>% select(Protein) %>% unlist() %>% unname() %>% strsplit(., split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD026238_mm_Citrullination_sites.gmt", sep = ""))
