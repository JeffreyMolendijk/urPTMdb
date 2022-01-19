# remotes::install_github(c("ropensci/tabulizerjars", "ropensci/tabulizer"))
# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD001863/"

# Manual data entry for pdf 
reagent_2 <- c('MARC1',
'PPM1A',
'PPM1B',
'AKAP12',
'MARCKS',
'MARC2',
'PPM1G',
'SLC4A1',
'LAMTOR1',
'RP2',
'C8orf47',
'GNAI1',
'GNAI3',
'GNAI2',
'FYN',
'FAM129B',
'LNP',
'FAM129A',
'ARF4',
'ARF5',
'PRKACA',
'PRKACB',
'PPP3R1',
'ARF1',
'ARF3',
'MSRA',
'RNF141',
'PSMC1',
'SCYL3',
'TMEM106C',
'MARCKSL1',
'GORASP2',
'EEPD1',
'SAMM50',
'MORC4')

reagent_3 <- c('TESC',
'AKAP12',
'MARCKs',
'MARC2',
'PPM1G',
'LAMTOR1',
'RP2',
'GNAI1',
'GNAI3',
'GNAI2',
'FAM129B',
'FAM129A',
'PRKACA',
'PRKACB',
'ARF1',
'LRRC57',
'RNF141',
'PSMC1',
'MARCKSL1',
'GORASP2')

reagent_4 <- c('MARCKS',
'PPM1G',
'GNAI1',
'GNAI3',
'ARF4',
'PRKACA',
'ARF1',
'ARF3',
'PSMC1',
'MARCKSL1')

reagent_6 <- c('PPM1A',
'PPM1B',
'AKAP12',
'MARCKS',
'MARC2',
'PPM1G',
'SLC4A1',
'LAMTOR1',
'GNAI1',
'GNAI3',
'FAM129B',
'PCMTD2',
'FAM129A',
'ARF4',
'ARF5',
'PRKACA',
'PPP3R1',
'ARF1',
'ARF3',
'CHMP6',
'LRRC57',
'PSMC1',
'LOH12CR1',
'TMEM106C',
'MARCKSL1',
'GORASP2')

reagent_7 <- c('PRKACA')


name <- "PXD001863_hs_Lipidation_myristoylation_substrates"
description <- "All proteins bound to reagents 2, 3, 4, 6, 7"
genes <- c(reagent_2, reagent_3, reagent_4, reagent_6, reagent_7) %>% unique
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD001863_hs_Lipidation_myristoylation_substrates.gmt", sep = ""))


