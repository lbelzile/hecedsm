library(tidyverse)

# Clayton (2018)
C18 <- read_csv("data-raw/ImplicitBias2014.csv") |>
  rename(dscore = d.score)  |>
  mutate(ED = factor(ED),
         village = factor(village),
         female = as.integer(female), quota = as.integer(quota), age = as.integer(age),
         under25 = as.integer(under25))
usethis::use_data(C18)
