# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD004017/"

# Manual gene entry from Table S1 in the PDF file 41598_2017_8597_MOESM1_ESM.pdf

genes <- c("C3",
           "CFH",
           "IGHM",
           "ANG",
           "MST1",
           "KNG1",
           "COL3A1",
           "COMP",
           "EFEMP1",
           "FBN1",
           "FN1",
           "FGA",
           "MXRA5",
           "PAPLN",
           "PCOLCE",
           "PRG4",
           "RARRES2",
           "CTSG",
           "ITIH4",
           "ELANE",
           "F2",
           "PLG",
           "AMBP",
           "ALB",
           "APOA4",
           "APOE")

name <- "PXD004017_hs_Citrullination_sites"
description <- "PXD004017_hs_Citrullination_sites"
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD004017_hs_Citrullination_sites.gmt", sep = ""))
