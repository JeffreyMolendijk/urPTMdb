# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PMID22797925/"

# Read relevant data
path <- "../data/PMID22797925/jcs107789tables1.xls"
df <- path %>% 
  excel_sheets() %>% 
  set_names() %>% 
  map(read_excel, path = path, skip = 2) %>% .[-1]

df <- do.call(rbind, df)

df <- df %>% filter(`indentified in two independent analyses` == "yes") %>% select(1) %>% `colnames<-`("uniprot") %>% distinct()


name <- "PMID22797925_hs_FAT10ylation_substrates"
description <- "PMID22797925_hs_FAT10ylation_substrates"
genes <- AnnotationDbi::select(org.Hs.eg.db::org.Hs.eg.db, df$uniprot, "SYMBOL", "UNIPROT") %>% filter(!is.na(SYMBOL)) %>% select(SYMBOL) %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PMID22797925_hs_FAT10ylation_substrates.gmt", sep = ""))


