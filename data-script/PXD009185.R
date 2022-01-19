# Load packages
library(tidyverse)

mapping <- AnnotationDbi::select(org.Hs.eg.db::org.Hs.eg.db, keys=(AnnotationDbi::keys(org.Hs.eg.db::org.Hs.eg.db, keytype="UNIPROT")), columns="SYMBOL", keytype="UNIPROT")


# Set working directory
dir <- "../data/PXD009185/"

# Read relevant data
df <- readxl::read_excel("../data/PXD009185/c8mo00115d2.xlsx", skip = 3)

# Filter to keep protein significantly increased in neddylation inhibition
df <- df[df[31] < 0.05, ]
df <- df[df[34] > 1, ]

name <- "PXD009185_hs_Neddylation_up_in_NeddylationInhibitorTreatment"
description <- "HCT-116 cells treated with Neddylation inhibitor MLN4942"
genes <- left_join(df[,1], mapping, by = c("Accession" = "UNIPROT")) %>% filter(!is.na(SYMBOL)) %>% select(SYMBOL) %>% distinct() %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD009185_hs_Neddylation_up_in_NeddylationInhibitorTreatment.gmt", sep = ""))




df <- readxl::read_excel("../data/PXD009185/c8mo00115d2.xlsx", skip = 3)

# Filter to keep protein significantly increased in neddylation inhibition
df <- df[df[31] < 0.05, ]
df <- df[df[34] < -1, ]

name <- "PXD009185_hs_Neddylation_down_in_NeddylationInhibitorTreatment"
description <- "HCT-116 cells treated with Neddylation inhibitor MLN4942"
genes <- left_join(df[,1], mapping, by = c("Accession" = "UNIPROT")) %>% filter(!is.na(SYMBOL)) %>% select(SYMBOL) %>% distinct() %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD009185_hs_Neddylation_down_in_NeddylationInhibitorTreatment.gmt", sep = ""))




rm(list = c("df", "description", "genes", "gs", "mapping"))
