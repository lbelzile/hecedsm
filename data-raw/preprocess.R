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


# Dataset 4: Johnson, Cheung and Donnellan (2014)
JCD14_S2 <- haven::read_sav(
  file = "data-raw/source/JCD14_S2.sav") |>
  filter(Madeup_dummy == 0 & Exp_Error == 0) |>
  select(Condition, mean_vignettes,
         Dog, Trolley, Wallet, Plane, Resume, Kitten,
         # Relaxed, Angry, Happy, Sad, Afraid, Depressed, Disgusted, Upset, Confused,
         Age, Gender) |>
  rename(mvignette = mean_vignettes) |>
  mutate(Condition = factor(Condition, labels = c("control","cleanliness")),
         Age = as.integer(Age),
         Gender = factor(Gender, labels = c("female","male"))        )

colnames(JCD14_S2) <- tolower(colnames(JCD14_S2))
usethis::use_data(JCD14_S2, overwrite = TRUE)


# Dataset 5: Grossman and Kross (2014)
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

# Dataset 6: Baumann, Seifert-Kessell, Jones (1992)
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



# Dataset 7: Lages, Boyle and Jenkins (2017)
library(tidyverse)
url <- "https://osf.io/tnjsu/download"
lages <- read.csv(url, header = TRUE)
# The data is not documented and the labels
# of the factors do not match those of the paper!
# fontsize seemingly in 20ft (but does not match)
LBJ17_S1A <- lages %>%
  pivot_longer(cols = NA10P1:WA25P5, # all columns in this range
               names_sep = c(2,4,6), # where to break labels,
               names_to = c("adaptation", "fontsize", "position"),
               values_to = "nerror") %>%
  transmute(nerror = nerror,
            #normalacuity = NA.,
            adaptation = factor(adaptation,
                                labels = c("PA",
                                           "AC")),
            fontsize = forcats::fct_recode(
              factor(fontsize),
              "-0.3" = "10",
              "-0.2" = "15",
              "-0.1" = "20",
              "0" = "25"),
            position = factor(substr(position, 2, 2)),
            id = factor(ObsID),
            acuity = factor(Group,
                            labels = c("normal",
                                       "high")),
  )
LBJ17_S1A |>
  group_by(acuity, fontsize, adaptation, id) |>
  summarize(ncorrect = 20 - sum(nerror))|>
  group_by(acuity, fontsize, adaptation) |>
  summarize(mean = mean(ncorrect))|>
  ggplot(mapping = aes(y = mean,
                       x = fontsize,
                       col = adaptation,
                       pch = acuity)) +
  geom_point()

usethis::use_data(LBJ17_S1A, overwrite = TRUE)

# Datasets 8 and 9: Multilab Direct Replication of Flavell, Beach, and Chinsky
FBC <- read.csv('data-raw/source/Multilab2021_FBC_Table2.csv', header = TRUE)
colnames(FBC) <- tolower(colnames(FBC))


MULTI21_D1 <- FBC |>
  dplyr::rename(lab = lablocale,
                age = age_group) |>
  dplyr::group_by(lab, age) |>
  dplyr::summarize(never = sum(never),
                   sometimes = sum(sometimes),
                   usually = sum(usually)) |>
  tidyr::pivot_longer(
    cols = c("never",
             "sometimes",
             "usually"),
    names_to = "frequency",
    values_to = "count") |>
  tibble::as_tibble() |>
  dplyr::mutate(
    lab = forcats::as_factor(lab),
    age = forcats::as_factor(age),
    frequency = forcats::as_factor(frequency))
usethis::use_data(MULTI21_D1, overwrite = TRUE)


MULTI21_D2 <- read.csv("data-raw/source/Multilab2021_spanData_allLabs.csv",
                       header = TRUE) |>
  select(!c(maxWrong, producer, trial_type)) |>
  rename(id = participant_id,
         lab = labLocale,
         taskorder = taskOrder,
         age = age_group,
         mcorrect = maxCorrect,
         frequency = prodSpeech_category) |>
  mutate(id = factor(paste0(lab,
                            "_",
                            sprintf("%02d", as.integer(gsub("^.*\\.", "", id))))),
         age = as.factor(age),
         lab = factor(lab),
         taskorder = factor(taskorder),
         timing = factor(timing),
         mcorrect = as.integer(mcorrect),
         frequency = factor(frequency,
                            labels = tolower(sort(unique(frequency))))
  ) |>
  dplyr::arrange(lab, id) |>
  tibble::as_tibble()
usethis::use_data(MULTI21_D2, overwrite = TRUE)

# Dataset 10: Rosen and Jerdee (1974)
RJ74 <- data.frame(
gender = factor(rep(c("male","female"),
                    length.out = 8L)),
decision = factor(rep(rep(c("promote","hold file"),
                      each = 2L), length.out = 8L)),
admin = factor(rep(c("simple","complex"), each = 4L)),
count = c(21L,14L,3L,10L,11L,5L,9L,20L)
) |>
  tibble::as_tibble()
usethis::use_data(RJ74, overwrite = TRUE)

# Dataset 11: Maglio and Polman (2014)
library(tidyverse)
# Name of subway stations
labs <- c("Bloor-Yonge", "Sherbourne", "Spadina", "St. George")
# Order of stations from West to East is
# Spadina > St. George > Bay > Bloor-Yonge > Sherbourne
olabs <- c("Spadina", "St. George", "Bloor-Yonge", "Sherbourne")
MP14_S1 <- read_csv("https://edsm.rbind.io/data/MaglioPolman2014S1.csv",
                 col_types = "fiff") %>%
  # STN_NUMBER redundant with STN_NAME
  transmute(station = fct_relevel(factor(STN_NAME, labels = labs), olabs),
            direction = factor(DIRECTION, labels = tolower(levels(DIRECTION))),
            distance = DISTANCE)
usethis::use_data(MP14_S1)

# Dataset 12: Bobak, Mileva and Hancock (2019)
BMH19_S2 <- read.csv("data-raw/source/Bobak2019S2.csv",
                       header = TRUE,
                       fileEncoding = "UTF-8-BOM") %>%
  select(pnum:diffmon) %>%
  pivot_longer(cols = starts_with("diff"),
               names_to = "color",
               names_prefix = "diff",
               values_to = "pcorr") %>%
  mutate(color = factor(color),
         sex = factor(sex),
         pnum = as.integer(factor(pnum))) |>
  rename(gender = sex,
         id = pnum)
usethis::use_data(BMH19_S2, overwrite = TRUE)

# Dataset 13: Curley et al. (2022)

C22 <- read.csv("data-raw/source/Curley2021.csv",
                   header = TRUE) %>%
  mutate(id = factor(id), # cast explanatories to factor
         anchor = factor(anchor),
         vignette = factor(vignette),
         verdictsyst = factor(verdictsyst)) |>
  tibble::as_tibble()
usethis::use_data(C22, overwrite = TRUE)

#sinew::makeOxygen()

# Generate skeleton for documentation
for(file in list.files("../data",full.names = TRUE)){
  load(file)
  cat(sinew::makeOxygen(tools::file_path_sans_ext(basename(file))), file = "documentation.R", append = TRUE)
}
