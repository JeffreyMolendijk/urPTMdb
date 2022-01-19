# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PMID23452859/"

# Read relevant data
df <- readxl::read_excel("../data/PMID23452859/mmc1.xls")


name <- "PMID23452859_mammalian_FAT10ylation_substrates"
description <- "PMID23452859_mammalian_FAT10ylation_substrates"
genes <- df %>% filter(FAT10 == 1) %>% select(GeneSymbol) %>% unlist() %>% unname() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PMID23452859_mammalian_FAT10ylation_substrates.gmt", sep = ""))




name <- "PMID23452859_mammalian_ISGylation_substrates"
description <- "PMID23452859_mammalian_ISGylation_substrates"
genes <- df %>% filter(ISG15 == 1) %>% select(GeneSymbol) %>% unlist() %>% unname() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PMID23452859_mammalian_ISGylation_substrates.gmt", sep = ""))


name <- "PMID23452859_mammalian_UFMylation_substrates"
description <- "PMID23452859_mammalian_UFMylation_substrates"
genes <- df %>% filter(UFM1 == 1) %>% select(GeneSymbol) %>% unlist() %>% unname() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PMID23452859_mammalian_UFMylation_substrates.gmt", sep = ""))




name <- "PMID23452859_mammalian_Neddylation_substrates"
description <- "PMID23452859_mammalian_Neddylation_substrates"
genes <- df %>% filter(NEDD8 == 1) %>% select(GeneSymbol) %>% unlist() %>% unname() %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PMID23452859_mammalian_Neddylation_substrates.gmt", sep = ""))


#name <- "PMID23452859_SUMO1_substrates"
#description <- "PMID23452859_SUMO1_substrates"
#genes <- df %>% filter(SUMO1 == 1) %>% select(GeneSymbol) %>% unlist() %>% unname() %>% unique
#gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

#GSEABase::toGmt(gs, con = paste(dir, "PMID23452859_SUMO1_substrates.gmt", sep = ""))



#name <- "PMID23452859_SUMO2SUMO3_substrates"
#description <- "PMID23452859_SUMO2SUMO3_substrates"
#genes <- df %>% filter(`SUMO2/3` == 1) %>% select(GeneSymbol) %>% unlist() %>% unname() %>% unique
#gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

#GSEABase::toGmt(gs, con = paste(dir, "PMID23452859_SUMO2SUMO3_substrates.gmt", sep = ""))





