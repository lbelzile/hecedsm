setwd(this.path::here())
library(tibble)
library(haven)
rm(list = ls())
datasets <- list.files(path = "../data/",
                       pattern = ".rda",
                       full.names = TRUE)
for (file in datasets) {
  load(file)
}
rm(datasets, file)
for (dataset in ls()) {
  haven::write_sav(get(dataset),
                   path = paste0("SPSS/",
                                 dataset,
                                 ".sav"))
}
