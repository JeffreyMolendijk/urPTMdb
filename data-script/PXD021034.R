#install.packages("docxtractr")

# Load packages
library(tidyverse)
library(docxtractr)

# Set working directory
dir <- "../data/PXD021034/"

# Read relevant data
df <- docx_extract_tbl(docx = read_docx(path = "../data/PXD021034/elife-58041-supp2-v2.docx"))

name <- "PXD021034_hs_Lipoylation_MecrMut"
description <- "Skeletal muscle proteins affected by Mecr mutation, affecting mtFAS"
genes <- df[,1] %>% distinct() %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD021034_hs_Lipoylation_MecrMut.gmt", sep = ""))

