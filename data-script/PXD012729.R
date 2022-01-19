# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD012729/"

# Read relevant data
df <- readxl::read_excel("../data/PXD012729/41467_2019_9175_MOESM3_ESM.xlsx", skip = 3)

name <- "PXD012729_hs_UFMylation_UFM1_substrates"
description <- "PXD012729_hs_UFM1_substrates"
genes <- df[,14] %>% distinct() %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD012729_hs_UFMylation_UFM1_substrates.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))
