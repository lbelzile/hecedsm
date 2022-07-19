
library(tidyverse)

# Dataset 1: Grossman and Kross (2014)
gk_s3_data_raw <- haven::read_sav("https://osf.io/8j36p/download")
GK14_S3 <- gk_s3_data_raw %>%
  # Keep selected variables
  select(age.group,
         Condition,
         RES_1:RES_4) %>%
  # change names (lower case)
  rename(age = age.group,
         condition = Condition,
         limits = RES_1,
         compr = RES_2,
         persp = RES_3,
         change = RES_4) %>%
  # haven::as_factor takes SPSS variables
  # and make them factor extracting labels
  mutate(age = haven::as_factor(age),
         condition = haven::as_factor(condition))
usethis::use_data(GK14_S3, overwrite = TRUE)

# Dataset 2: Baumann, Seifert-Kessell, Jones (1992)
BSJ92 <-
  carData::Baumann %>%
  rename(pretest1 = pretest.1,
         pretest2 = pretest.2,
         posttest1 = post.test.1,
         posttest2 = post.test.2,
         posttest3 = post.test.3) %>%
  mutate(group = fct_recode(.f = group,
                            DR = "Basal",
                            TA = "Strat"))
usethis::use_data(BSJ92, overwrite = TRUE)



# Dataset 3: Lages, Boyle and Jenkins (2017)
library(tidyverse)
url <- "https://osf.io/tnjsu/download"
lages <- read.csv(url, header = TRUE)
LBJ17_S1A <- lages %>%
  pivot_longer(cols = NA10P1:WA25P5, # all columns in this range
               names_sep = c(2,4,6), # where to break labels,
               names_to = c("adaptation", "fontsize", "position"),
               values_to = "ncorrect") %>%
  transmute(MAE = NA.,
            adaptation = factor(adaptation),
         fontsize = factor(fontsize),
         position = factor(position),
         obsid = factor(ObsID),
         group = factor(Group),
         )
usethis::use_data(LBJ17_S1A, overwrite = TRUE)
