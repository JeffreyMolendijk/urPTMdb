# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD016011/"

# Targets from Figure 1C
# https://chemistry-europe.onlinelibrary.wiley.com/doi/10.1002/cbic.201900716
name <- "PXD016011_hs_AMPylation_substrates"
description <- "N6azA-enriched (AMPylation probe) proteins"
genes <- c("ABHD6", "ACP2", "PNPLA", "TPP1", "CTSZ", "CTSC", "PFKP", "PPME1", "SQSTM1", "SCPEP1", "CTSB", "CTSA")
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD016011_hs_AMPylation_substrates.gmt", sep = ""))

rm(list = c("description", "genes", "gs"))
