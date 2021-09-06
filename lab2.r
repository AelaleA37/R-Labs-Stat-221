library(tidyverse)

download.file("http://www.openintro.org/stat/data/nc.RData", destfile = "nc.RData") 
load("nc.RData")

#1
t.test(nc$weeks, conf.level=0.9)

#2
gained_cleaned <- nc %>% 
  filter(!is.na(gained))
young <- gained_cleaned %>% 
  filter(mature=="younger mom")
old <- gained_cleaned %>% 
  filter(mature=="mature mom")
var.test(young$gained,old$gained)
