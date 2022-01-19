# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD025621/"

# Read relevant data
df <- readxl::read_excel("../data/PXD025621/pone.0259798.s003.xlsx", skip = 0, na = c("","NaN"))

name <- "PXD025621_mm_Ksu_sites_brain"
description <- "PXD025621_mm_Ksu_sites_brain"
genes <- df[,3] %>% unlist %>% unname %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD025621_mm_Ksu_sites_brain.gmt", sep = ""))


# Read relevant data
df <- readxl::read_excel("../data/PXD025621/pone.0259798.s004.xlsx", skip = 0, na = c("","NaN"))

name <- "PXD025621_mm_Ksu_sites_brain_up_IHC"
description <- "PXD025621_mm_Ksu_sites_brain increased after intracerebral hemorrhage"
genes <- df[df[,11] >= 1, ][,4] %>% unlist %>% unname %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD025621_mm_Ksu_sites_brain_up_IHC.gmt", sep = ""))



name <- "PXD025621_mm_Ksu_sites_brain_down_IHC"
description <- "PXD025621_mm_Ksu_sites_brain decreased after intracerebral hemorrhage"
genes <- df[df[,11] <= 1, ][,4] %>% unlist %>% unname %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD025621_mm_Ksu_sites_brain_down_IHC.gmt", sep = ""))