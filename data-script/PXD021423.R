# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD021423/"

# Read relevant data
df <- readxl::read_excel("../data/PXD021423/Table_2.xlsx", sheet = "Up-regulated proteins", skip = 0, na = c("","NaN"))

name <- "PXD021423_mm_Kcr_up_BspF_expression"
description <- "Protein with an upregulated lysine crotonylation site after BspF overexpression"
genes <- df[,2] %>% distinct() %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD021423_mm_Kcr_up_BspF_expression.gmt", sep = ""))




df <- readxl::read_excel("../data/PXD021423/Table_2.xlsx", sheet = "Down-regulated proteins", skip = 0, na = c("","NaN"))

name <- "PXD021423_mm_Kcr_down_BspF_expression"
description <- "Protein with a downregulated lysine crotonylation site after BspF overexpression"
genes <- df[,2] %>% distinct() %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD021423_mm_Kcr_down_BspF_expression.gmt", sep = ""))


rm(list = c("df", "description", "genes", "gs"))


