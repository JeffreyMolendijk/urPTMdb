# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/MSV000082623/"

# Read relevant data
# Neddylation substrates are those with a ratio between -0.5 to 0.5 in the MLN dataset, and < -0.5 in the ND8 dataset
# As show in Figure 2F (https://www.nature.com/articles/s41467-018-06365-0)
df <- readxl::read_excel("../data/MSV000082623/41467_2018_6365_MOESM4_ESM.xlsx", sheet = "MLN", skip = 0, na = c("","NaN"))[,c(4,10)]
df <- df[df[,2] < 0.5 & df[,2] > -0.5, ]
mln <- df[!is.na(df[,1]),] %>% .[,1] %>% unlist %>% unname %>% unique


df <- readxl::read_excel("../data/MSV000082623/41467_2018_6365_MOESM4_ESM.xlsx", sheet = "ND8", skip = 0, na = c("","NaN"))[,c(4,10)]
df <- df[df[,2] < -0.5, ]
nd8 <- df[!is.na(df[,1]),] %>% .[,1] %>% unlist %>% unname %>% unique



name <- "MSV000082623_hs_Neddylation_substrates"
description <- "Neddylation substrates are those with a ratio between -0.5 to 0.5 in the MLN dataset, and < -0.5 in the ND8 dataset"
genes <- intersect(mln, nd8)
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "MSV000082623_hs_Neddylation_substrates.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs", "nd8", "mln"))

