library(tidyverse)
library(rvest)

read_html("https://www.iban.com/country-codes") %>% 
  html_nodes("#myTable") %>% 
  html_table(header = TRUE) %>% 
  .[[1]] -> ISO_codes

write.csv(ISO_codes, "ISO_codes.csv")
