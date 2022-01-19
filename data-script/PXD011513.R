# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD011513/"

# Read relevant data
df <- readxl::read_excel("../data/PXD011513/41467_2019_13393_MOESM3_ESM.xlsx", skip = 1, na = c("","NaN"))



name <- "PXD011513_mm_ISGylation_substrates"
description <- "proteins present in USP18C61A/C61A OR ppresent in wild-type, but absent in Isg15???/???"
genes <- df %>% filter(Cluster %in% c("cluster 1", "cluster 2")) %>% filter(!is.na(`Gene name`)) %>% dplyr::select(`Gene name`) %>% distinct()  %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD011513_mm_ISGylation_substrates.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))



# Proteins are filtered to select those associated with cluster 1 and 2 (ISGylation targets)

# We also identified 316 ISG15 sites on 219 proteins that were primarily present in USP18C61A/C61A animals (cluster 1).
# Thus, cluster 2 (proteins present in wild-type, but absent in Isg15???/??? following infection) is likely the 
# closest approximation of the wild-type ISGylome following Listeria infection. 