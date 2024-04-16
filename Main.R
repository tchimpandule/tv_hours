library(tidyverse)
library(here)
Marital_tv_hous<-gss_cat %>% group_by(marital) %>% 
  filter(age>40) %>% 
  summarise(mean_tv_hours=mean(tvhours,na.rm=T))

write.csv(Marital_tv_hous,here("Marital_mean_tv_hours.csv"))


