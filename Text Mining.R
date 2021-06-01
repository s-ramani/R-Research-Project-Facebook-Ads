library(quanteda)
library(readtext)
library(readxl)
library(ggplot2)
library(tidyverse)
library(dplyr)
library(dslabs)

x <- corpus(readtext("C:/Users/Suhaas Ramani/Desktop/Kerala_html.txt"))

x <- tokens(x, remove_numbers = TRUE, remove_punct = TRUE, 
            remove_symbols = TRUE, remove_separators = TRUE, 
            split_hyphens = TRUE, remove_url = TRUE)

x <- tokens_select(x, names(data_int_syllables))
x <- tokens_select(x, c("amp", "s", "since"), selection = "remove")

sapply(x, paste, collapse = " ")
corpus_x <- corpus(x)
dfmx <- dfm(x)

dfmx <- dfmx %>% dfm(remove = stopwords('english')) %>% dfm_trim(min_termfreq = 20)

words_dfm <- textstat_frequency(dfmx)
features_words_dfm <- words_dfm$feature


ds_theme_set()
ggplot(words_dfm, aes(x = feature, y = frequency)) + 
  geom_point() + 
  xlab("words") +
  geom_text(aes(label=paste("(",frequency,")")), size = 2.5, nudge_y = 4) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = -0.00001)) + 
  ggtitle("Frequency Plot for Congress Ads")

library(topicmodels)

dfmx <- dfmx %>% dfm(remove = stopwords('english'))


convert(dfmx, to = "data.frame")

lda <- LDA(dfmx, k = 2, control = list(seed = 1234))

library(tidytext)

topics <- tidy(lda, matrix = "beta")
topics

library(ggplot2)
library(dplyr)

top_terms <- topics %>%
  group_by(topic) %>%
  top_n(10, beta) %>%
  ungroup() %>%
  arrange(topic, -beta)

top_terms %>%
  mutate(term = reorder_within(term, beta, topic)) %>%
  ggplot(aes(beta, term, fill = factor(topic))) +
  geom_col(show.legend = FALSE) +
  facet_wrap(~ topic, scales = "free") +
  scale_y_reordered()