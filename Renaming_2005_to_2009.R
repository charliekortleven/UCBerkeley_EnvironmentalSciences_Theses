---
title: "2005_2009_renaming"
output: html_document
date: "2026-06-06"
---

library(readxl)

sheet_names <- excel_sheets("/Users/charliekortleven/Desktop/Berkeley_EnvSci/Berkeley_EnvSciTheses_2005_2009.xlsx")

yr_2005 <- read_excel("/Users/charliekortleven/Desktop/Berkeley_EnvSci/Berkeley_EnvSciTheses_2005_2009.xlsx",sheet_names[1])

yr_2006 <- read_excel("/Users/charliekortleven/Desktop/Berkeley_EnvSci/Berkeley_EnvSciTheses_2005_2009.xlsx",sheet_names[2])

yr_2007 <- read_excel("/Users/charliekortleven/Desktop/Berkeley_EnvSci/Berkeley_EnvSciTheses_2005_2009.xlsx",sheet_names[3])

yr_2008 <- read_excel("/Users/charliekortleven/Desktop/Berkeley_EnvSci/Berkeley_EnvSciTheses_2005_2009.xlsx",sheet_names[4])

yr_2009 <- read_excel("/Users/charliekortleven/Desktop/Berkeley_EnvSci/Berkeley_EnvSciTheses_2005_2009.xlsx",sheet_names[5])



{r}
library(stringr)
pattern <- paste0(
  str_extract(yr_2005$Author, "(?<= )[A-Za-z]+$"),
  str_extract(yr_2005$Author, "^[A-Za-z]")
) 

pattern_final <- paste0(pattern, "_2005-page1.pdf")
pattern_final

old_files <-list.files(path = "~/Desktop/Berkeley_EnvSci/2005_2009/2005final")

setwd("~/Desktop/Berkeley_EnvSci/2005_2009/2005final")
file.rename(old_files, pattern_final) 


{r}
library(stringr)

for (yr in sheet_names) {
  
  df <- get(paste0("yr_", yr))
  
  pattern <- paste0(
    str_extract(df$Author, "(?<= )[A-Za-z]+$"),
    str_extract(df$Author, "^[A-Za-z]")
  )
  
  pattern_final <- paste0(pattern, "_", yr, "-page1.pdf")
  
  old_files <- list.files(
    path = paste0("~/Desktop/Berkeley_EnvSci/2005_2009/", yr, "final")
  )
  
  setwd(paste0("~/Desktop/Berkeley_EnvSci/2005_2009/", yr, "final"))
  
  file.rename(old_files, pattern_final)
} 

