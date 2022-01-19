# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD015599/"

# Read relevant data
df <- readxl::read_excel("../data/PXD015599/41557_2020_484_MOESM3_ESM.xlsx", skip = 0, sheet = "IbpA_Flag")

name <- "PXD015599_hs_AMPylation_substrates_FicEnzyme_IbpA_Flag"
description <- "Substrates of Fic enzyme Ibpa (flag)"
genes <- df[df[,7] > 5, ][4] %>% distinct() %>% unlist() %>% unname() %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD015599_hs_AMPylation_substrates_FicEnzyme_IbpA_Flag.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))


df <- readxl::read_excel("../data/PXD015599/41557_2020_484_MOESM3_ESM.xlsx", skip = 0, sheet = "BepA_Flag")

name <- "PXD015599_hs_AMPylation_substrates_FicEnzyme_BepA_Flag"
description <- "Substrates of Fic enzyme Bepa (flag)"
genes <- df[df[,7] > 5, ][4] %>% distinct() %>% unlist() %>% unname() %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD015599_hs_AMPylation_substrates_FicEnzyme_BepA_Flag.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))


df <- readxl::read_excel("../data/PXD015599/41557_2020_484_MOESM3_ESM.xlsx", skip = 0, sheet = "IbpA_MBP")

name <- "PXD015599_hs_AMPylation_substrates_FicEnzyme_IbpA_MBP"
description <- "Substrates of Fic enzyme Ibpa (MBP)"
genes <- df[df[,7] > 5, ][4] %>% distinct() %>% unlist() %>% unname() %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD015599_hs_AMPylation_substrates_FicEnzyme_IbpA_MBP.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))


df <- readxl::read_excel("../data/PXD015599/41557_2020_484_MOESM3_ESM.xlsx", skip = 0, sheet = "BepA_MBP")

name <- "PXD015599_hs_AMPylation_substrates_FicEnzyme_BepA_MBP"
description <- "Substrates of Fic enzyme Bepa (MBP)"
genes <- df[df[,7] > 5, ][4] %>% distinct() %>% unlist() %>% unname() %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD015599_hs_AMPylation_substrates_FicEnzyme_BepA_MBP.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))



df <- readxl::read_excel("../data/PXD015599/41557_2020_484_MOESM3_ESM.xlsx", skip = 0, sheet = "Hype")

name <- "PXD015599_hs_AMPylation_substrates_FicEnzyme_Hype"
description <- "Substrates of Fic enzyme Hype"
genes <- df[df[,7] > 5, ][4] %>% distinct() %>% unlist() %>% unname() %>% strsplit(split = ";") %>% unlist %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD015599_hs_AMPylation_substrates_FicEnzyme_Hype.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))








