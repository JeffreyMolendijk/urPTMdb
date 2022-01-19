# Load packages
library(tidyverse)
library(readxl)

# Set working directory
dir <- "../data/PXD008970/"

# Read relevant data
df <- readxl::read_excel(path = "../data/PXD008970/supp_RA118.000696_136158_1_supp_105961_p6b1kt.xlsx", na = c("", "NA", "NaN"))

df <- df %>% filter(`Manual Inspection` == "+")

tissues <- df$Tissue %>% unique

for(i in 1:length(tissues)){

  name <- paste("PXD008970_hs_Citrullination_sites_", janitor::make_clean_names(paste(tissues[i])), sep = "")
  description <- paste("PXD008970_hs_Citrullination_sites_", janitor::make_clean_names(paste(tissues[i])), sep = "")
  genes <- df %>% filter(Tissue == tissues[i]) %>% select(`Gene name`) %>% unlist() %>% unname() %>% strsplit(., split = ";") %>% unlist %>% unique
  gs <- GSEABase::GeneSet(setName = name, shortDescription = description, geneIds = genes)
  
  GSEABase::toGmt(gs, con = paste(dir, paste("PXD008970_hs_Citrullination_sites_", janitor::make_clean_names(paste(tissues[i])), ".gmt", sep = ""), sep = ""))
    
}
