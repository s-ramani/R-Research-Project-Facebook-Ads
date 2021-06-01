library(tidyverse)
library(dplyr)
library(ggplot2)
library(readxl)
library(plotly)
library(ggrepel)

Kerala_ad <- read_excel("C:\\Users\\Suhaas Ramani\\Desktop\\R Research Project - Facebook Ads\\Filtered_Kerala_Ad_Data.xlsx")

Kerala_ad <- Kerala_ad %>% 
  select(ad_number, impressions) %>% 
  mutate(ad_number = as.numeric(ad_number)) %>% 
  arrange(ad_number)

Kerala_ad$impressions <- factor(Kerala_ad$impressions, levels = c("<1K", "1K-5K", "5K-10K", "10K-50K", "50K-100K", "100K-200K", "200K-500K", "500K-1M", ">1M"))

Kerala_ad <- Kerala_ad[order(Kerala_ad$impressions),]

Kerala_ad_plot <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point(stat = "identity") + 
  geom_text_repel(aes(label = ad_number))
Kerala_ad_plot

Kerala_ad_plot %>% ggplotly


  
