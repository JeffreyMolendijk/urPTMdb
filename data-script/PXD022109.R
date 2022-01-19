# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD022109/"



name <- "PXD022109_mm_FAT10ylation_FAT10_promoted_celldeath"
description <- "From Figure 7E"
genes <- c("FAT10", "UBA6", "USE1", "PRKN", "PINK1", "MFN2")
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD022109_mm_FAT10ylation_FAT10_promoted_celldeath.gmt", sep = ""))
