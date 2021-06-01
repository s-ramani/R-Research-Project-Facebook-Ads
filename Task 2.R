library(tidyverse)
library(dplyr)
library(ggplot2)
library(readxl)
library(plotly)
library(ggrepel)
library(gridExtra)

Kerala_ad <- read_excel("C:\\Users\\Suhaas Ramani\\Desktop\\R Research Project - Facebook Ads\\Filtered_Kerala_Ad_Data.xlsx")

Kerala_ad <- Kerala_ad %>% 
  filter(!is.na(creation_date_notime)) %>%
  mutate(ad_number = as.numeric(ad_number)) %>% 
  arrange(ad_number)

Kerala_ad$impressions <- factor(Kerala_ad$impressions, levels = c("<1K", "1K-5K", "5K-10K", "10K-50K", "50K-100K", "100K-200K", "200K-500K", "500K-1M", ">1M"))

Kerala_ad <- Kerala_ad[order(Kerala_ad$impressions),]

Kerala_ad_plot1 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(460, 500) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (460, 500)")
Kerala_ad_plot1

Kerala_ad_plot2 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(501, 540) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (501, 540)")
Kerala_ad_plot2

Kerala_ad_plot3 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(541, 580) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (541, 580)")
Kerala_ad_plot3

Kerala_ad_plot4 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(581, 620) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (581, 620)")
Kerala_ad_plot4

Kerala_ad_plot5 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(621, 660) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (621, 660)")
Kerala_ad_plot5

Kerala_ad_plot6 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(661, 700) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (661, 700)")
Kerala_ad_plot6

Kerala_ad_plot7 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(701, 740) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (701, 740)")
Kerala_ad_plot7

Kerala_ad_plot8 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(741, 780) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (741, 780)")
Kerala_ad_plot8

Kerala_ad_plot9 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(781, 820) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (781, 820)")
Kerala_ad_plot9

Kerala_ad_plot10 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(821, 860) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (821, 860)")
Kerala_ad_plot10

Kerala_ad_plot11 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(861, 900) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (861, 900)")
Kerala_ad_plot11

Kerala_ad_plot12 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(901, 940) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (901, 940)")
Kerala_ad_plot12

Kerala_ad_plot13 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(941, 980) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (941, 980)")
Kerala_ad_plot13

Kerala_ad_plot14 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(981, 1020) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (981, 1020)")
Kerala_ad_plot14

Kerala_ad_plot15 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(1021, 1060) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (1021, 1060)")
Kerala_ad_plot15

Kerala_ad_plot16 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(1061, 1090) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (1061, 1090)")
Kerala_ad_plot16

Kerala_ad_plot17 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(1567, 1600) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (1567, 1600)")
Kerala_ad_plot17

Kerala_ad_plot18 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(1601, 1703) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (1601, 1703)")
Kerala_ad_plot18

Kerala_ad_plot19 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(1965, 2000) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (1965, 2000)")
Kerala_ad_plot19

Kerala_ad_plot20 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(2001, 2040) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (2001, 2040)")
Kerala_ad_plot20

Kerala_ad_plot21 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(2041, 2080) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (2041, 2080)")
Kerala_ad_plot21

Kerala_ad_plot22 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(2081, 2120) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (2081, 2120)")
Kerala_ad_plot22

Kerala_ad_plot23 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(2121, 2160) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (2121, 2160)")
Kerala_ad_plot23

Kerala_ad_plot24 <- Kerala_ad %>% 
  ggplot(aes(impressions, ad_number)) +
  geom_point() +
  geom_text(aes(label=paste("(",ad_number,",",region_KL,")")), size = 2.5, nudge_x = -0.35) + 
  ylim(2161, 2223) + 
  ggtitle("Ad_number vs. Impressions Plot - Range (2161, 2223)")
Kerala_ad_plot24


