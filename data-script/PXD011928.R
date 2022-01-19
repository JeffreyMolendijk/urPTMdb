# Load packages
library(tidyverse)

# Set working directory
dir <- "../data/PXD011928/"

genes <- c("NEDD8",
           "UBE2M",
           "NPM1",
           "DCUN1D1",
           "SNRPD1",
           "NCL",
           "PARP1",
           "PFKM",
           "ACOXL",
           "NOLC1",
           "NSUN2",
           "UBE2N",
           "UBA3",
           "CSN8",
           "CAND1",
           "ULA1",
           "HNRNPU",
           "DDX21",
           "XRCC5",
           "CUL2",
           "TOMM20",
           "CSN6",
           "DDX46",
           "PNAS-138",
           "CSN7A",
           "CSN5",
           "XRCC6",
           "HMGB2",
           "MCM3",
           "GTF2I",
           "MSH2",
           "RCF4",
           "SNRPA",
           "MCM2",
           "KHSRP",
           "SFPQ",
           "U2SURP",
           "TMPO",
           "RFC5",
           "MCM4")


name <- "PXD011928_hs_Neddylation_polyNEDD8_purification"
description <- "Table of the top 40 proteins identified by mass spectrometry analysis in Figure 2A"
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD011928_hs_Neddylation_polyNEDD8_purification.gmt", sep = ""))

