# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD002277/"

# Read relevant data
df <- readxl::read_excel("../data/PXD002277/mmc1.xlsx", sheet = "Table S4", skip = 24, na = c("","NaN"))

name <- "PXD002277_hs_Ksu_sites_HeLa"
description <- "PXD002277_hs_Ksu_sites_HeLa"
genes <- df[,7] %>% unlist %>% unname %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD002277_hs_Ksu_sites_HeLa.gmt", sep = ""))


# Read relevant data
df <- readxl::read_excel("../data/PXD002277/mmc1.xlsx", sheet = "Table S5", skip = 24, na = c("","NaN"))

name <- "PXD002277_mm_Ksu_sites_liver"
description <- "PXD002277_mm_Ksu_sites_liver"
genes <- df[,7] %>% unlist %>% unname %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD002277_mm_Ksu_sites_liver.gmt", sep = ""))


# Read relevant data
df <- readxl::read_excel("../data/PXD002277/mmc1.xlsx", sheet = "Table S6", skip = 24, na = c("","NaN"))

name <- "PXD002277_hs_Kac_sites_HeLa"
description <- "PXD002277_hs_Kac_sites_HeLa"
genes <- df[,7] %>% unlist %>% unname %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD002277_hs_Kac_sites_HeLa.gmt", sep = ""))


# Read relevant data
df <- readxl::read_excel("../data/PXD002277/mmc1.xlsx", sheet = "Table S7", skip = 24, na = c("","NaN"))

name <- "PXD002277_mm_Kac_sites_liver"
description <- "PXD002277_mm_Kac_sites_liver"
genes <- df[,7] %>% unlist %>% unname %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD002277_mm_Kac_sites_liver.gmt", sep = ""))
