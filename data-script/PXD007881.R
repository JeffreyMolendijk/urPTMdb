# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD007881/"


genes <- c("Glud1",
           "Aco2",
           "Hadha",
           "Mdh2",
           "Cs",
           "Hadhb",
           "Idh2",
           "Abat",
           "Acadsb",
           "Atp5b",
           "Oxct1",
           "Nipsnap3b",
           "Sdha",
           "Acaa2",
           "Acad10",
           "Acadl",
           "Acadm",
           "Acat1",
           "Acot13",
           "Acsf2",
           "Ak3",
           "Aldh7a1",
           "Atp5o",
           "Ca5b",
           "D10Jhu81e",
           "Dld",
           "Ech1",
           "Echs1",
           "Eci2",
           "Got2",
           "Idh3a",
           "Mcat",
           "Mpst",
           "Nadk2",
           "Nfs1",
           "Pitrm1",
           "Tst") %>% unique()

name <- "PXD007881_mm_Kglu_substrates_liver"
description <- "PXD007881_mm_Kglu_substrates_liver"
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD007881_mm_Kglu_substrates_liver.gmt", sep = ""))






genes <- c("Glud1",
           "Aco2",
           "Hadha",
           "Mdh2",
           "Cs",
           "Hadhb",
           "Idh2",
           "Abat",
           "Acadsb",
           "Atp5b",
           "Nipsnap3b",
           "Sdha",
           "Acaa2",
           "Acad10",
           "Acadl",
           "Acadm",
           "Acat1",
           "Acot13",
           "Acsf2",
           "Ak3",
           "Aldh7a1",
           "Atp5o",
           "D10Jhu81e",
           "Dld",
           "Ech1",
           "Echs1",
           "Eci2",
           "Got2",
           "Mcat",
           "Mpst",
           "Nfs1",
           "Tst",
           "Aadat",
           "Aass",
           "Acads",
           "Aco1",
           "Acsm1",
           "Acsm3",
           "Acsm5",
           "Adh1",
           "Agmat",
           "Agxt",
           "Agxt2",
           "Aldh1b1",
           "Aldh1l1",
           "Aldh4a1",
           "Aldh6a1",
           "Aldh9a1",
           "Amacr",
           "Apoa1bp",
           "Arg1",
           "Atad3",
           "Atp5a1",
           "Atp5c1",
           "Atp5d",
           "Atp5e",
           "Atp5f1",
           "Atp5h",
           "Atp5j",
           "Atp5j2",
           "Atp5l",
           "Auh",
           "Bdh1",
           "Bphl",
           "Ces1d",
           "Cisd3",
           "Coq3",
           "Coq6",
           "Cox4i1",
           "Cox5b",
           "Cps1",
           "Cycs",
           "Cyp27a1",
           "Dbt",
           "Ddt",
           "Decr1",
           "Dhtkd1",
           "Dlat",
           "Dlst",
           "Dmgdh",
           "Eci1",
           "Eef1a1",
           "Ehhadh",
           "Etfa",
           "Etfb",
           "Etfdh",
           "Ethe1",
           "Fech",
           "Fh",
           "Gcat",
           "Glul",
           "Glyat",
           "Gm4952",
           "Gpx1",
           "Gsta3",
           "Gstk1",
           "Gstp1",
           "Gstz1",
           "Gulo",
           "Hadh",
           "Hagh",
           "Hdhd3",
           "Hibadh",
           "Hibch",
           "Hint2",
           "Hmgcl",
           "Hmgcs2",
           "Hsd17b10",
           "Hsd3b5",
           "Hspa9",
           "Hspd1",
           "Hspe1",
           "Iba57",
           "Ivd",
           "Keg1",
           "L2hgdh",
           "Lypla1",
           "Mccc1",
           "Mcur1",
           "Mecr",
           "Mut",
           "Ndufa5",
           "Ndufa6",
           "Ndufs1",
           "Nipsnap1",
           "Nit2",
           "Otc",
           "Oxsm",
           "Pc",
           "Pcbd2",
           "Pcca",
           "Pecr",
           "Phb",
           "Ppa2",
           "Prdx5",
           "Prosc",
           "Rpl11",
           "Sardh",
           "Slc25a12",
           "Slc25a13",
           "Slc25a22",
           "Slc25a3",
           "Slc25a5",
           "Sod2",
           "Sucla2",
           "Suclg1",
           "Sugct",
           "Timm13",
           "Uqcrb",
           "Uqcrc1",
           "Uqcrc2",
           "Uqcrh",
           "Uqcrq",
           "Zadh2") %>% unique()

name <- "PXD007881_mm_Kglu_substrates_brain"
description <- "PXD007881_mm_Kglu_substrates_brain"
gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)

GSEABase::toGmt(gs, con = paste(dir, "PXD007881_mm_Kglu_substrates_brain.gmt", sep = ""))


