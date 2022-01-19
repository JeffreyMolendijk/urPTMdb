# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD020589/"

# Read relevant data
df <- readxl::read_excel(path = "../data/PXD020589/mmc3.xlsx", sheet = "Figure 5A", skip = 0, na = c("", "NA", "NaN"))


name <- "PXD020589_hs_ADPribosylation_sites_PARP1_targets"
description <- "PXD020589_hs_ADPribosylation_sites_PARP1_targets from Figure 5A"
genes <- df %>% select(Gene.name) %>% unlist() %>% unname() %>% unique
genes <- genes[!is.na(genes)]
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD020589_hs_ADPribosylation_sites_PARP1_targets.gmt", sep = ""))
