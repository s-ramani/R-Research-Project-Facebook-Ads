library(tidyverse)
library(dplyr)
library(Radlibrary)

token <- readline()
EAALmtecznsEBAMNH4NLaN7YognehzEkkbXOg2CZCtsne1iG4aAnExfCZAQZBeIEf4TNnJW0TrJIbZAokRXqDVZAyBJJwgYrY9LrtH4XRwC1n49gU6EfediJ6DP6q63LwsiQZC4SbZChTar0FLzZAZC0rFCR9bnfUlJz8epFV3dVnPoAucAj0Ktjy0SSUq2Xy6ZBuCeDb4DkFSaqmKMjyQnxSGDvkNXpIzSCuD84hRZB6dvZB9wZDZD

query <- adlib_build_query(
  ad_reached_countries = "IN",
  ad_active_status = c("INACTIVE"),
  publisher_platform = "FACEBOOK",
  search_page_ids = 661738850941252,
  fields = "ad_snapshot_url"
)

response <- adlib_get(params = query, token = token)
