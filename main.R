#Jahna A Thompson
#practice lesson learning how to use Git and GitHub
#The Graph courses on youtube

library(tidyverse)
library(here)
library(dplyr)

#load dataset and create pipe -- %>%
tv_hours_tab <-gss_cat %>%
  filter(age < 30) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours=mean(tvhours,na.rm=TRUE))

write.csv(tv_hours_tab,here("TV_HOURS_BY_MARITAL.csv"))
