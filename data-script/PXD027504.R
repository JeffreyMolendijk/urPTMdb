# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD027504/"

# Read relevant data
df <- readxl::read_excel(path = "../data/PXD027504/41467_2021_26172_MOESM5_ESM.xlsx", sheet = 1, skip = 0, na = c("", "NA", "NaN"))


name <- "PXD024233_hs_ADPribosylation_sites"
description <- "PXD024233_hs_ADPribosylation_sites from supplemental data 2"
genes <- df %>% select(`Gene name`) %>% unlist() %>% unname() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD024233_hs_ADPribosylation_sites.gmt", sep = ""))



# Read relevant data
df <- readxl::read_excel(path = "../data/PXD027504/41467_2021_26172_MOESM10_ESM.xlsx", sheet = 1, skip = 0, na = c("", "NA", "NaN"))


name <- "PXD024233_hs_ADPribosylation_sites_af1521"
description <- "PXD024233_hs_ADPribosylation_sites from supplemental data 7"
genes <- df %>% select(`Gene name`) %>% unlist() %>% unname() %>% strsplit(., split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD024233_hs_ADPribosylation_sites_af1521.gmt", sep = ""))



# Read relevant data
df <- readxl::read_excel(path = "../data/PXD027504/41467_2021_26172_MOESM8_ESM.xlsx", sheet = 1, skip = 0, na = c("", "NA", "NaN"))


name <- "PXD024233_hs_ADPribosylation_sites_boronate"
description <- "PXD024233_hs_ADPribosylation_sites from supplemental data 5"
genes <- df %>% select(`Gene name`) %>% unlist() %>% unname() %>% strsplit(., split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD024233_hs_ADPribosylation_sites_boronate.gmt", sep = ""))

