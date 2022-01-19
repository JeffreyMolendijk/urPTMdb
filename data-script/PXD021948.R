# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD021948/"

# Read relevant data
df <- readxl::read_excel("../data/PXD021948/anie202010981-sup-0001-table_s2.xlsx", skip = 1, na = c("","NaN"))

name <- "PXD021948_mm_Lipoylation_substrates"
description <- "Proteins with p < 0.05 and enrichment > 4 in iLCL/control"
genes <- df %>% filter(`P value` < 0.05 & `Average log2 ratio(iLCL/control)` > 2) %>% .[,1] %>% distinct() %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD021948_mm_Lipoylation_substrates.gmt", sep = ""))

# Authors used P < 0.05 and enrichment >4 (log2 of 2) to identify 9 lipoylated proteins