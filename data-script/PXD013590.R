# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD013590/"

# Read relevant data
df <- readr::read_delim("../data/PXD013590/proteinGroups.txt", delim ="\t", skip = 0, na = c("", "NaN"))

name <- "PXD013590_hs_UFMylation_increased_in_UFBP1_oe"
description <- "log2(H/L) greater than 1"
genes <- df %>% select(`Gene names`, `Ratio H/L`) %>% filter(!is.na(`Ratio H/L`) & !is.na(`Gene names`)) %>% 
  mutate(log2ratio = log2(`Ratio H/L`)) %>% 
  filter(log2ratio >= 1) %>% distinct() %>% select(`Gene names`) %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD013590_hs_UFMylation_increased_in_UFBP1_oe.gmt", sep = ""))

name <- "PXD013590_hs_UFMylation_decreased_in_UFBP1_oe"
description <- "log2(H/L) lower than -1"
genes <- df %>% select(`Gene names`, `Ratio H/L`) %>% filter(!is.na(`Ratio H/L`) & !is.na(`Gene names`)) %>% 
  mutate(log2ratio = log2(`Ratio H/L`)) %>% 
  filter(log2ratio <= -1) %>% distinct() %>% select(`Gene names`) %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD013590_hs_UFMylation_decreased_in_UFBP1_oe.gmt", sep = ""))


rm(list = c("df", "description", "genes", "gs"))




