library(tidyverse)
library(dplyr)
library(ggplot2)
library(readxl)
library(plotly)
library(ggrepel)
library(gridExtra)

ad_data <- read_excel("C:\\Users\\Suhaas Ramani\\Desktop\\R Research Project - Facebook Ads\\Filtered_Kerala_Ad_Data.xlsx")

filtered_data <- ad_data %>% 
  mutate(counts = n())

plot1 <- filtered_data %>% 
  ggplot(aes(`18-24_f`)) + 
  geom_histogram() + 
  xlab("Proportion of Viewership of Ads among 18-24 age group females") + 
  ggtitle("Distribution of Ad Viewership among 18-24 age group females")
plot1

plot2 <- filtered_data %>% 
  ggplot(aes(`18-24_m`)) + 
  geom_histogram() + 
  xlab("Proportion of Viewership of Ads among 18-24 age group males") + 
  ggtitle("Distribution of Ad Viewership among 18-24 age group males")
plot2

plot3 <- filtered_data %>% 
  ggplot(aes(`25-34_f`)) + 
  geom_histogram() + 
  xlab("Proportion of Viewership of Ads among 25-34 age group females") + 
  ggtitle("Distribution of Ad Viewership among 25-34 age group females")
plot3

plot4 <- filtered_data %>% 
  ggplot(aes(`25-34_m`)) + 
  geom_histogram() + 
  xlab("Proportion of Viewership of Ads among 25-34 age group males") + 
  ggtitle("Distribution of Ad Viewership among 25-34 age group males")
plot4

plot5 <- filtered_data %>% 
  ggplot(aes(`35-44_f`)) + 
  geom_histogram() + 
  xlab("Proportion of Viewership of Ads among 35-44 age group females") + 
  ggtitle("Distribution of Ad Viewership among 35-44 age group females")
plot5

plot6 <- filtered_data %>% 
  ggplot(aes(`35-44_m`)) + 
  geom_histogram() + 
  xlab("Proportion of Viewership of Ads among 35-44 age group males") + 
  ggtitle("Distribution of Ad Viewership among 35-44 age group males")
plot6


plot7 <- filtered_data %>% 
  ggplot(aes(`55-64_f`)) + 
  geom_histogram() + 
  xlab("Proportion of Viewership of Ads among 55-64 age group females") + 
  ggtitle("Distribution of Ad Viewership among 55-64 age group females")
plot7

plot8 <- filtered_data %>% 
  ggplot(aes(`55-64_m`)) + 
  geom_histogram() + 
  xlab("Proportion of Viewership of Ads among 55-64 age group males") + 
  ggtitle("Distribution of Ad Viewership among 55-64 age group males")
plot8

plot9 <- filtered_data %>% 
  ggplot(aes(`65+_f`)) + 
  geom_histogram() + 
  xlab("Proportion of Viewership of Ads among 65+ age group females") + 
  ggtitle("Distribution of Ad Viewership among 65+ age group females")
plot9

plot10 <- filtered_data %>% 
  ggplot(aes(`65+_m`)) + 
  geom_histogram() + 
  xlab("Proportion of Viewership of Ads among 65+ age group males") + 
  ggtitle("Distribution of Ad Viewership among 65+ age group males")
plot10