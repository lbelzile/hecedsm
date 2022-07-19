library(tidyverse)

# Dataset 1: Clayton (2018)
C18 <- read_csv("data-raw/source/Clayton_2018.csv") |>
  rename(dscore = d.score)  |>
  mutate(ED = factor(ED),
         village = factor(village),
         female = as.integer(female), quota = as.integer(quota), age = as.integer(age),
         under25 = as.integer(under25))
usethis::use_data(C18, overwrite = TRUE)

# Dataset 2: Bastian, Jetten and Ferris (2014)
dat_raw_pain <- haven::read_sav(file = "data-raw/source/BJF_2014_S1.sav")
BJF14_S1 <- dat_raw_pain %>%
  rowwise() %>%
  transmute(condition = as_factor(condition),
            bonding = mean(c_across(group101:group107)),
            pain = task_intense,
            unpleasant = task_unpleasant,
            positive = Pos_PANAS,
            negative = Neg_PANAS,
            threat = mean(c_across(c(task_fearful, task_worrying, task_hostile, task_threatening, task_frightening, task_terrifying))),
            challenge = mean(c_across(c(task_enjoyable, task_stimulating, task_exhilarating, task_exciting, task_informative, task_challenging))),

            groupsize = groupsize,
            age = subage,
            gender = as_factor(subgender)
            )
usethis::use_data(BJF14_S1, overwrite = TRUE)
# To see the labels for condition, check the raw data
dat_raw_pain$condition %>% attr('labels')


# Dataset 3: Liu et al. (2022), Experiment 1
LRMM22_S1 <- haven::read_sav(file = "data-raw/source/LRMM22_S1.sav") |>
  dplyr::select(DV,
                self0,
                form,
                gender,
                age
  ) |>
  dplyr::rename(appreciation = DV,
                role = self0) |>
  dplyr::mutate(role = factor(role, levels = c(0,1), labels = c("initiator","responder")),
                form = haven::as_factor(form, levels = "labels"),
                gender = haven::as_factor(gender, levels = "labels"),
                age = as.integer(age))
levels(LRMM22_S1$form) <- c("email","text","phone","other")
usethis::use_data(LRMM22_S1, overwrite = TRUE)


# Dataset 4:
JCD14_S2 <- haven::read_sav(
  file = "data-raw/source/JCD14_S2.sav") |>
  filter(Madeup_dummy == 0 & Exp_Error == 0) |>
  select(Condition, mean_vignettes,
         Dog, Trolley, Wallet, Plane, Resume, Kitten, Relaxed, Angry, Happy, Sad, Afraid, Depressed, Disgusted, Upset, Confused, Age, Gender, Race)

colnames(JCD14_S2) <- tolower(colnames(JCD14_S2))
usethis::use_data(JCD14_S2, overwrite = TRUE)


for(file in list.files("../data",full.names = TRUE)){
  load(file)
  cat(sinew::makeOxygen(tools::file_path_sans_ext(basename(file))), file = "documentation.R", append = TRUE)
}
