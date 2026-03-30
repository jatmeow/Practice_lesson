#Jahna A Thompson
#practice lesson 
#The Graph courses on youtube

library(tidyverse)
library(here)
library(dplyr)

#load dataset and create pipe -- %>%
tv_hours_table <-gss_cat %>%
  filter(age>=30) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours=mean(tvhours,na.rm=TRUE))

write.csv(tv_hours_table,here("TV_HOURS_BY_MARITAL.csv"))
