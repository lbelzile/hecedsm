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
BJF14_S1 <- dat_raw_pain |>
  rowwise() |>
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
dat_raw_pain$condition |> attr('labels')


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
GK14_S3 <- gk_s3_data_raw |>
  # Keep selected variables
  select(age.group,
         Condition,
         RES_1:RES_4) |>
  # change names (lower case)
  rename(age = age.group,
         condition = Condition,
         limits = RES_1,
         compr = RES_2,
         persp = RES_3,
         change = RES_4) |>
  # haven::as_factor takes SPSS variables
  # and make them factor extracting labels
  mutate(age = haven::as_factor(age),
         condition = haven::as_factor(condition))
usethis::use_data(GK14_S3, overwrite = TRUE)

# Dataset 6: Baumann, Seifert-Kessell, Jones (1992)
BSJ92 <-
  carData::Baumann |>
  rename(pretest1 = pretest.1,
         pretest2 = pretest.2,
         posttest1 = post.test.1,
         posttest2 = post.test.2,
         posttest3 = post.test.3) |>
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
LBJ17_S1A <- lages |>
  pivot_longer(cols = NA10P1:WA25P5, # all columns in this range
               names_sep = c(2,4,6), # where to break labels,
               names_to = c("adaptation", "fontsize", "position"),
               values_to = "nerror") |>
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
                 col_types = "fiff") |>
  # STN_NUMBER redundant with STN_NAME
  transmute(station = fct_relevel(factor(STN_NAME, labels = labs), olabs),
            direction = factor(DIRECTION, labels = tolower(levels(DIRECTION))),
            distance = DISTANCE)
usethis::use_data(MP14_S1)

# Dataset 12: Bobak, Mileva and Hancock (2019)
BMH19_S2 <- read.csv("data-raw/source/Bobak2019S2.csv",
                       header = TRUE,
                       fileEncoding = "UTF-8-BOM") |>
  select(pnum:diffmon) |>
  pivot_longer(cols = starts_with("diff"),
               names_to = "color",
               names_prefix = "diff",
               values_to = "pcorr") |>
  mutate(color = factor(color),
         sex = factor(sex),
         pnum = as.integer(factor(pnum))) |>
  rename(gender = sex,
         id = pnum)
usethis::use_data(BMH19_S2, overwrite = TRUE)

# Dataset 13: Curley et al. (2022)

C22 <- read.csv("data-raw/source/Curley2021.csv",
                   header = TRUE) |>
  mutate(id = factor(id), # cast explanatories to factor
         anchor = factor(anchor),
         vignette = factor(vignette),
         verdictsyst = factor(verdictsyst)) |>
  tibble::as_tibble()
usethis::use_data(C22, overwrite = TRUE)

# Dataset 14: Clayton (2016) replication of Janiewski

C16 <- haven::read_sav(file = "https://osf.io/26mxf/download") |>
# The response is labelled 'mean2'
# the explanatories are 'anchor' and 'magnitude'
# This is a 2x2 factorial design
#
# Transform data so that explanatories are factors
# as_factor will automatically detect SPSS labels
  mutate(anchor = as_factor(Anchortype),
         magnitude = as_factor(magnitude),
         gender = as_factor(Gender)) |>
  filter(DROP == 0) |> # keep only some observations
  dplyr::select(anchor, magnitude, gender, mean2) |>
  rename(madjust = mean2) |>
  mutate(gender = factor(gender, labels = c("female", "male", "other")))
usethis::use_data(C16, overwrite = TRUE)


# Dataset 15 and 16: van Stekelenburg et al. (2021)

SSVB21_S2 <- read.csv("data-raw/source/vanStekelenburg2021S2.csv",
                      header = TRUE) |>
  tibble::as_tibble() |>
  transmute(prior = prior,
            post = post,
            condition = factor(condition))
usethis::use_data(SSVB21_S2)
SSVB21_S3 <- read.csv("data-raw/source/vanStekelenburg2021S3.csv",
               header = TRUE) |>
  filter(Prior > 0) |>
  mutate(Condition = factor(Condition,
         labels = c("BoostPlus",
                    "consensus",
                    "control"))) |>
  tibble::as_tibble() |>
  transmute(prior = Prior,
            post = Post,
            condition = Condition,
            mention_consensus = factor(Consensus_mention_auto,
                                       labels = c("no","yes")))
usethis::use_data(SSVB21_S3, overwrite = TRUE)

# Dataset 17: Roczniewska and Higgins (2019)
RH19_S1 <- haven::read_sav("data-raw/source/Roczniewska_Higgins_2019.sav") |>
  transmute(
    change = factor(change_outcome,
                    labels = c("negative","positive")),
    regfocus = factor(reg_focus_manipulation,
                         labels = c("prevention", "promotion")),
    fluency = fluency_MEAN,
    engagement = engagement_MEAN,
    dprocessjustice = change_process_justice_MEAN,
    dopenness = changeOPENNESS_MEAN,
    promem = PROM_EMPLOYEE_MEAN,
    prevem = PREV_EMPLOYEE_MEAN,
    gender = as_factor(gender),
    age = as.integer(age),
    tenure = as.integer(tenure),
    hours_week = as.integer(hours_week))

levels(RH19_S1$gender) <- c("male","female")
usethis::use_data(RH19_S1, overwrite = TRUE)

# Dataset 18: Anandarajan, Viger and Curatola (2002)
AVC02 <- read.csv(file = "data-raw/source/Anandarajan2002_fake.csv") |>
mutate(format = factor(format,
       labels = c("integrated note",
                  "stand-alone note",
                  "modified auditor report"))) |>
  tibble::as_tibble() |>
  select(!participant)
usethis::use_data(AVC02, overwrite = TRUE)

# Dataset 19: Lee and Choi (2019), Study 1
LC19_S1 <- read.csv("data-raw/source/LeeChoi2019S1.csv") |>
  select(! c(price, category_con, image)) |>
  mutate(consistency = factor(cond,
                       labels = c("consistent",
                                  "inconsistent")),
         Gender = factor(Gender, labels = c("male",
                                            "female")),
         prodeval = (att1 + att2 + att3)/3) |>
  select(!c(att1, att2, att3, cond)) |>
  dplyr::relocate(c(prodeval, familiarity, consistency, Gender, Age))
colnames(LC19_S1) <- tolower(colnames(LC19_S1))
usethis::use_data(LC19_S1, overwrite = TRUE)


# Dataset 19: Lee and Choi (2019), Study 2
LC19_S2 <- read.csv("data-raw/source/LeeChoi2019S2.csv",
                    sep = "\t") |>
  select(! cond) |>
  mutate(consistency = factor(image,
                              labels = c("inconsistent",
                                         "consistent")),
         Gender = factor(Gender, labels = c("male",
                                            "female")),
         prodeval = (att1 + att2 + att3)/3,
         fluency = ifelse(is.na(info2), info3, ifelse(is.na(info3), info2, (info2 + info3)/2))) |>
  select(!c(image, att1, att2, att3, info2, info3)) |>
  dplyr::relocate(c(prodeval, fluency, familiarity, consistency, Gender, Age)) |>
  tibble::as_tibble()
colnames(LC19_S2) <- tolower(colnames(LC19_S2))
usethis::use_data(LC19_S2, overwrite = TRUE)

# Dataset 20: Lee and Choi (2019), Study 3 (Table 2)
LC19_T2 <-
  data.frame(text = factor(rep(c("1",
                   "6"), each = 6)),
             image = factor(rep(rep(c("1", "6"), each = 3L), length.out = 12L)),
             expected = factor(rep(c("one","six", "not sure"), length.out = 12L)),
             count = as.integer(c(41,5,5,40,7,5,13,30,4,4,38,8)))
usethis::use_data(LC19_T2, overwrite = TRUE)

# Dataset 21: Saeed's NeuroIS experiment

AA21 <- read.csv(file = "data-raw/source/AA21_N170_per_epoch.csv") |>
  tibble::as_tibble() |>
  filter(electrode == "Fz") |>
  mutate(stimuli = factor(stimuli,
                          labels = c("GAN2","R","GAN1")),
         participant = factor(as.integer(factor(participant))),
         epoch = factor(epoch + 1L)) |>
  rename(id = participant,
         latency = Value) |>
  select(!electrode)
usethis::use_data(AA21, overwrite = TRUE)

# Dataset 22: Liu et al. (2022) Study 3
LRMM22_S3 <- haven::read_sav(file = "data-raw/source/LRMM22_S3.sav") |>
  dplyr::select(dv_responder,
                dv_initiator,
                age,
                gender,
                age_initiator,
                gender_initiator
  ) |>
  dplyr::rename(apprec_resp = dv_responder,
                apprec_init = dv_initiator,
                gender_resp = gender,
                age_resp = age,
                gender_init = gender_initiator,
                age_init = age_initiator) |>
  mutate(apprec_resp = as.integer(apprec_resp),
         apprec_init = as.integer(apprec_init),
         gender_resp = as_factor(gender_resp),
         gender_init = as_factor(gender_init)
         )
levels(LRMM22_S3$gender_init) <- tolower(levels(LRMM22_S3$gender_init))
levels(LRMM22_S3$gender_resp) <- tolower(levels(LRMM22_S3$gender_resp))
usethis::use_data(LRMM22_S3, overwrite = TRUE)


# Dataset 23: Liu et al. (2022), Experiment 5b

LRMM22_S5b <- haven::read_sav("data-raw/source/LRMM22_S5b.sav") |>
  transmute(appreciation = ifelse(IV_self1other0 == 1,
                                  (self_1 + self_2 + self_3 + self_4)/4,
                                  (other_1 + other_2 + other_3 + other_4)/4),
         surprise = ifelse(IV_self1other0 == 1,
                           (surprise_self_1 + surprise_self_2)/2,
                           (surprise_other_1 + surprise_other_2)/2),
         condition = factor(condition,
                            labels = c("other","self")),
         age = as.integer(age),
         gender = as_factor(gender),
         )
levels(LRMM22_S5b$gender) <- tolower(levels(LRMM22_S5b$gender))
usethis::use_data(LRMM22_S5b, overwrite = TRUE)

# Data 24: ManyLab replication of Risen and Gilovich (2008)

MANY18_S18 <- read.csv("data-raw/source/ManyLabs2_S18.csv") |>
  tibble::as_tibble() |>
  mutate(gender = factor(gender),
         condition = factor(condition),
         lab = factor(lab),
         likelihood = as.integer(likelihood))
usethis::use_data(MANY18_S18)

# Dataset 25: Brucks and Levav (2022)

# Lab experiment
d1 <- read.csv("data-raw/source/Brucks_Levav_2022/study1_data.csv") |>
  dplyr::select(cond,
                idea_number,
                creative_count,
                diff,
                p_select_creative,
                top_creative,
                avg_creative) |>
  mutate(study = "1")
d2 <- read.csv("data-raw/source/Brucks_Levav_2022/study2_data.csv") |>
  dplyr::select(cond,
                idea_number,
                creative_count,
                diff,
                p_select_creative,
                top_creative,
                avg_creative
                ) %>%
  mutate(study = "2")

BL22_L <- rbind(d1, d2) |>
  tibble::as_tibble() |>
  mutate(cond = factor(cond),
         study = factor(study)
  ) |>
  rename(nidea = idea_number,
         ncreative = creative_count,
         select_creative = p_select_creative) |>
  select(!diff)
usethis::use_data(BL22_L, overwrite = TRUE)

# Eyetracker data
BL22_E <- read.csv("data-raw/source/Brucks_Levav_2022/eyegaze_data_by_participant.csv") |>
  tibble::as_tibble() |>
  rename(id = Group.Number,
  ) |>
  mutate(id = factor(as.integer(factor(id))),
         writer = writer == "w",
         cond = factor(cond)) |>
  select(!total_time)
usethis::use_data(BL22_E, overwrite = TRUE)




#sinew::makeOxygen()

# Generate skeleton for documentation
for(file in list.files("../data",full.names = TRUE)){
  load(file)
  cat(sinew::makeOxygen(tools::file_path_sans_ext(basename(file))), file = "documentation.R", append = TRUE)
}
