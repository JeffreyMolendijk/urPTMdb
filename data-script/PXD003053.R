# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD003053/"


# Read relevant data
df <- readxl::read_excel(unzip("../data/PXD003053/10.1074_O115.054429_mcp.O115.054429-2.zip", "Revised Tables/Table S1.xlsx")
, skip = 0, sheet = "VopS proteins")

name <- "PXD003053_hs_AMPylation_substrates_VopS_treatment"
description <- "AMPylation substrates after bacterial virulence factor Vibrio outer protein S treatment"
genes <- df[,1] %>% distinct()  %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD003053_hs_AMPylation_substrates_VopS_treatment.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))


df <- readxl::read_excel(unzip("../data/PXD003053/10.1074_O115.054429_mcp.O115.054429-2.zip", "Revised Tables/Table S1.xlsx")
                         , skip = 0, sheet = "E234G proteins")

name <- "PXD003053_hs_AMPylation_substrates_HYPE_mediated"
description <- "AMPylation substrates mediated by mutated (E234G) Huntingtin-associated protein E"
genes <- df[,1] %>% distinct()  %>% unlist() %>% unname()
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD003053_hs_AMPylation_substrates_HYPE_mediated.gmt", sep = ""))

rm(list = c("df", "description", "genes", "gs"))