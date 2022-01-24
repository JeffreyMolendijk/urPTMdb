# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PMID23862649/"

# Read relevant data
df <- readxl::read_excel("../data/PMID23862649/pr400395k_si_002.xlsx", skip = 1)


name <- "PMID23862649_hs_FAT10ylation_substrates"
description <- "PMID23862649_hs_FAT10ylation_substrates"
genes <- df %>% filter(!is.na(`Gene Name`))%>% select(`Gene Name`) %>% unlist %>% unname %>% strsplit(., split = ";") %>% unlist %>% unique 
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PMID23862649_hs_FAT10ylation_substrates.gmt", sep = ""))

