# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD007874/"

# Read relevant data
df <- readxl::read_excel("../data/PXD007874/oncotarget-09-6109-s003.xlsx", sheet = 1, skip = 0)


name <- "PXD018345_mm_Ksu_substrates_SDHC_kd"
description <- "From supplementary table 2"
genes <- df %>% select(gene_symbol) %>% unlist() %>% unname() %>% strsplit(., ";") %>% unlist() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD018345_mm_Ksu_substrates_SDHC_kd.gmt", sep = ""))

