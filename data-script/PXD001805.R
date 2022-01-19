# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD001805/"

# Read relevant data
df <- readxl::read_excel("../data/PXD001805/proteinGroups.xlsx", skip = 0, na = c("","NaN"))



name <- "PXD001805_hs_ISGylation_ISG15_substrates"
description <- "Ratio pf medium condition over light greater than 1"
genes <- df %>% filter(`Ratio M/L` > 1) %>% filter(!is.na(`Gene names`)) %>% dplyr::select(`Gene names`) %>% distinct()  %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD001805_hs_ISGylation_ISG15_substrates.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))



# Proteins are filtered to select those with an M/L ratio > 1 (ISGylation targets)

# (C) Scatter plot of Log2 transformed ISGylated proteins. The X axis displays the medium (M) condition over light (L), 
# which is ISG15 overexpression over empty vector control (in blue), and the Y axis displays the heavy (H) condition over medium (M), 
# which is interferon treatment over ISG15 expression (in red). 

