# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD008525/"

# Read relevant data
df <- readxl::read_excel("../data/PXD008525/mmc2.xlsx", skip = 24, sheet = "Table S1A", na = c("", "NA", "NaN"))

df <- df[is.finite(log2(df[,19]) %>% unlist), ]
df <- df[log2(df[,19]) < -1, ]

name <- "PXD0085251_hs_Khib_sites_p300_ko"
description <- "Khib sites in p300 knockout with KO/WT ratio <-1"
genes <- df[5] %>% distinct() %>% unlist() %>% unname() %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD0085251_hs_Khib_sites_p300_ko.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))



# Read relevant data
df <- readxl::read_excel("../data/PXD008525/mmc2.xlsx", skip = 24, sheet = "Table S1B", na = c("", "NA", "NaN"))

df <- df[is.finite(log2(df[,19]) %>% unlist), ]
df <- df[log2(df[,19]) < -1, ]

name <- "PXD0085251_hs_Kac_sites_p300_ko"
description <- "Kac sites in p300 knockout with KO/WT ratio <-1"
genes <- df[5] %>% distinct() %>% unlist() %>% unname() %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD0085251_hs_Kac_sites_p300_ko.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))
