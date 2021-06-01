library(tidyverse)
library(ggplot2)
library(dplyr)
install.packages("devtools")
library(devtools)
devtools::install_github("facebookresearch/Radlibrary")
library(Radlibrary)

library(readxl)
Kerala_ad <- read_excel("C:\\Users\\Suhaas Ramani\\Desktop\\R Research Project - Facebook Ads\\Filtered_Kerala_Ad_Data.xlsx")

Kerala_ad <- Kerala_ad %>% 
  filter(!is.na(creation_date_notime)) %>%
  group_by(creation_date_notime) %>% 
  summarize(counts = n())

Kerala_ad_plot <- ggplot(Kerala_ad, aes(x = creation_date_notime, y = counts)) + 
  geom_point() + 
  geom_line() + 
  geom_smooth() +
  geom_text(aes(label = counts), vjust = -0.5) + 
  xlab("Time") + 
  ggtitle("Time-Series Plot of Kerala Ad Data")