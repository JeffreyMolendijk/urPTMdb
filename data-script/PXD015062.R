# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD015062/"

# Read relevant data
df <- readxl::read_excel("../data/PXD015062/41467_2019_14235_MOESM4_ESM.xlsx", skip = 0, sheet = "HeLa")
df <- df[1:(nrow(df)-2),]

name <- "PXD015062_hs_AMPylation_substrates_HeLa"
description <- "AMPylation substrates identified using pro-N6pA-tag enrichment"
genes <- df[,1] %>% distinct()  %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD015062_hs_AMPylation_substrates_HeLa.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))


df <- readxl::read_excel("../data/PXD015062/41467_2019_14235_MOESM4_ESM.xlsx", skip = 0, sheet = "A549")
df <- df[1:(nrow(df)-2),]

name <- "PXD015062_hs_AMPylation_substrates_A549"
description <- "AMPylation substrates identified using pro-N6pA-tag enrichment"
genes <- df[,1] %>% distinct()  %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD015062_hs_AMPylation_substrates_A549.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))


df <- readxl::read_excel("../data/PXD015062/41467_2019_14235_MOESM4_ESM.xlsx", skip = 0, sheet = "SH-SY5Y")
df <- df[1:(nrow(df)-2),]

name <- "PXD015062_hs_AMPylation_substrates_SH-SY5Y"
description <- "AMPylation substrates identified using pro-N6pA-tag enrichment"
genes <- df[,1] %>% distinct()  %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD015062_hs_AMPylation_substrates_SH-SY5Y.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))


df <- readxl::read_excel("../data/PXD015062/41467_2019_14235_MOESM4_ESM.xlsx", skip = 0, sheet = "IPSCs")
df <- df[1:(nrow(df)-2),]

name <- "PXD015062_hs_AMPylation_substrates_IPSCs"
description <- "AMPylation substrates identified using pro-N6pA-tag enrichment"
genes <- df[,1] %>% distinct()  %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD015062_hs_AMPylation_substrates_IPSCs.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))


df <- readxl::read_excel("../data/PXD015062/41467_2019_14235_MOESM4_ESM.xlsx", skip = 0, sheet = "NPCs")
df <- df[1:(nrow(df)-2),]

name <- "PXD015062_hs_AMPylation_substrates_NPCs"
description <- "AMPylation substrates identified using pro-N6pA-tag enrichment"
genes <- df[,1] %>% distinct()  %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD015062_hs_AMPylation_substrates_NPCs.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))


df <- readxl::read_excel("../data/PXD015062/41467_2019_14235_MOESM4_ESM.xlsx", skip = 0, sheet = "Neurons")
df <- df[1:(nrow(df)-2),]

name <- "PXD015062_hs_AMPylation_substrates_Neurons"
description <- "AMPylation substrates identified using pro-N6pA-tag enrichment"
genes <- df[,1] %>% distinct()  %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD015062_hs_AMPylation_substrates_Neurons.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))



df <- readxl::read_excel("../data/PXD015062/41467_2019_14235_MOESM4_ESM.xlsx", skip = 0, sheet = "Fibroblasts")
df <- df[1:(nrow(df)-2),]

name <- "PXD015062_hs_AMPylation_substrates_Fibroblasts"
description <- "AMPylation substrates identified using pro-N6pA-tag enrichment"
genes <- df[,1] %>% distinct()  %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD015062_hs_AMPylation_substrates_Fibroblasts.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))



df <- readxl::read_excel("../data/PXD015062/41467_2019_14235_MOESM4_ESM.xlsx", skip = 0, sheet = "COs")
df <- df[1:(nrow(df)-2),]

name <- "PXD015062_hs_AMPylation_substrates_COs"
description <- "AMPylation substrates identified using pro-N6pA-tag enrichment"
genes <- df[,1] %>% distinct()  %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD015062_hs_AMPylation_substrates_COs.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))


