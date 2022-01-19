# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PMID33725370/"


name <- "PMID33725370_hs_LactoylLys_pathway"
description <- "LactoylLys pathway members from PMID33725370"
genes <- c("SIRT2", "GLO2", "GLO1")
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PMID33725370_hs_LactoylLys_pathway.gmt", sep = ""))


