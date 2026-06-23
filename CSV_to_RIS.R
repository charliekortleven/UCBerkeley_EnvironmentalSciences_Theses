library(readxl)
all_theses <- read_excel("~/Desktop/Berkeley_EnvSci/EnvSci_AllYears_Final_RIS.xlsx")

#drop unnecessary columns
library(dplyr)
all_theses <- all_theses %>% select(-"Keywords",-"URL_website", -"URL_complete")

all_theses_ris <- file("output.ris", "w")

for (i in 1:nrow(all_theses)) {
  writeLines(c(
    "TY  - THES",
    paste0("AU  - ", all_theses$AU[i]),
    paste0("TI  - ", all_theses$TI[i]),
    paste0("PY  - ", all_theses$PY[i]),
    paste0("PB  - ", all_theses$PB[i]),
    paste0("UR  - ", all_theses$UR[i]),
    paste0("U1  - ", all_theses$U1[i]),
    paste0("AB  - ", all_theses$AB[i]),
    paste0("KW  - ", all_theses$KW1[i]),
    paste0("KW  - ", all_theses$KW2[i]),
    paste0("KW  - ", all_theses$KW3[i]),
    paste0("KW  - ", all_theses$KW4[i]),
    paste0("KW  - ", all_theses$KW5[i]),
    "ER  - ",
    ""
  ), all_theses_ris)
}

close(all_theses_ris)
