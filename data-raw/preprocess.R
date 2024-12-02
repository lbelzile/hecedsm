library(tidyverse)
# setwd(this.path::here())

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
            ) |>
  tibble::as_tibble()
usethis::use_data(BJF14_S1, overwrite = TRUE)
# To see the labels for condition, check the raw data
dat_raw_pain$condition |> attr('labels')


# Dataset 3: Liu et al. (2022), Experiment 1
LRMM23_S1 <- haven::read_sav(file = "data-raw/source/LRMM22_S1.sav") |>
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
levels(LRMM23_S1$form) <- c("email","text","phone","other")
levels(LRMM23_S1$gender) <- tolower(levels(LRMM22_S1$gender))
usethis::use_data(LRMM23_S1, overwrite = TRUE)


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
                            TA = "Strat")) |>
  tibble::as_tibble()
usethis::use_data(BSJ92, overwrite = TRUE)



# Dataset 7: Lages, Boyle and Jenkins (2017)
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
    frequency = forcats::as_factor(frequency)) |>
  dplyr::mutate(age = factor(age, levels = levels(age)[order(c(10,5,6,7))]))

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
  tibble::as_tibble() |>
  dplyr::mutate(age = factor(age, levels = levels(age)[order(c(10,5,6,7))])) |>
  dplyr::mutate(timing = factor(timing, labels = c("delayed", "immediate","point and name"))) |>
mutate(order = ifelse((taskorder == "first" & timing == "immediate") |
                      (taskorder == "second" & timing == "delayed"), 0L, 1L)) |>
  group_by(id) |>
  mutate(taskorder = median(order)) |>
  ungroup() |>
  mutate(taskorder = factor(taskorder, levels = c(0L,1L), labels = c("immediate first", "delayed first"))) |>
  select(!order)
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
usethis::use_data(MP14_S1, overwrite = TRUE)

# Dataset 12: Bobak, Mileva and Hancock (2019)
BMH19_E2raw <- haven::read_sav(
    file = "data-raw/source/Bobak2019E2.sav")

BMH19_E2acc <- BMH19_E2raw |>
  select(pnum:diffmon) |>
  pivot_longer(cols = starts_with(c("diff")),
               names_to = "color",
               names_prefix = c("diff"),
               values_to = c("accuracy"))
BMH19_E2pcor <- BMH19_E2raw |> select(pnum,
                                      samecol:samemon) |>
      pivot_longer(cols = starts_with(c("same")),
                   names_to = "color",
                   names_prefix = c("same"),
                   values_to = c("pcorr"))
BMH19_E2 <- left_join(x = BMH19_E2acc,
                      y = BMH19_E2pcor,
            by = c("pnum", "color")) |>
  mutate(color = factor(color),
         sex = factor(sex),
         pnum = as.integer(factor(pnum))) |>
  rename(gender = sex,
         id = pnum)
usethis::use_data(BMH19_E2, overwrite = TRUE)

# Dataset 13: Curley et al. (2022)

# Dataset 13: Curley et al. (2022)

C22 <- readxl::read_xlsx("data-raw/source/Verdictspottingdata.xlsx") |>
  dplyr::rename_all(.funs = tolower) |>
  mutate(id = factor(participant), # cast explanatories to factor
         vorder = factor(vignette_order),
         anchor = factor(anchor, levels = 1:2, labels = c("weak-first","strong-first")),
         vignette = factor(vignette),
         verdictsyst = factor(verdict_system, labels = c("two","three")),
         guilt = guilt_total,
         prior = pjaq,
         .keep = "none",  ) |>
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
usethis::use_data(SSVB21_S2, overwrite = TRUE)


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
            nconsensus = as.integer(countMC_auto),
trust = TrustScientists)
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
    fairness = change_process_justice_MEAN,
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
  dplyr::relocate(c(prodeval, familiarity, consistency, Gender, Age)) |>
  tibble::as_tibble()
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
             count = as.integer(c(41,5,5,40,7,5,13,30,4,4,38,8))) |>
  tibble::as_tibble()
usethis::use_data(LC19_T2, overwrite = TRUE)

# Dataset 21: Saeed's NeuroIS experiment

AA21 <- read.csv(file = "data-raw/source/AA21_N170_per_epoch.csv") |>
  tibble::as_tibble() |>
  filter(electrode == "Fz") |>
  mutate(stimuli = factor(stimuli,
                          labels = c("GAN2","real","GAN1")),
         participant = factor(as.integer(factor(participant))),
         epoch = factor(epoch + 1L)) |>
  mutate(stimuli = relevel(stimuli, ref = "real")) |>
  rename(id = participant,
         stimulus = stimuli,
         latency = Value) |>
  select(!electrode)
usethis::use_data(AA21, overwrite = TRUE)

# Dataset 22: Liu et al. (2022) Study 3
LRMM23_S3 <- haven::read_sav(file = "data-raw/source/LRMM22_S3.sav") |>
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
levels(LRMM23_S3$gender_init) <- tolower(levels(LRMM23_S3$gender_init))
levels(LRMM23_S3$gender_resp) <- tolower(levels(LRMM23_S3$gender_resp))
usethis::use_data(LRMM23_S3, overwrite = TRUE)


# Dataset 23: Liu et al. (2022), Experiment 5b

LRMM23_S5b <- haven::read_sav("data-raw/source/LRMM22_S5b.sav") |>
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
         ) |>
  dplyr::mutate(initiator = factor(ifelse(condition == "self", "initiator", "responder"))) |>
  # dplyr::filter(gender != "other") |>
  dplyr::select(!condition)

levels(LRMM23_S5b$gender) <- tolower(levels(LRMM23_S5b$gender))
usethis::use_data(LRMM23_S5b, overwrite = TRUE)

# Data 24: ManyLab replication of Risen and Gilovich (2008)

MANY18_S18 <- read.csv("data-raw/source/ManyLabs2_S18.csv") |>
  tibble::as_tibble() |>
  mutate(gender = factor(gender),
         condition = factor(condition),
         lab = factor(lab),
         likelihood = as.integer(likelihood))
usethis::use_data(MANY18_S18, overwrite = TRUE)

# Datasets 25 and 26: Brucks and Levav (2022)

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

# Dataset 27 and 28: Duke and Amir (2022+)
DA23_E1 <- read.csv("data-raw/source/DukeAmir2022E1.csv") |>
  tibble::as_tibble() |>
  dplyr::rename(format = cond) |>
  dplyr::mutate(format = factor(format),
         gender = factor(gender, labels = c("male",
                                            "female",
                                            "other")))
levels(DA23_E1$format) <- c("quantity-integrated",
                            "quantity-sequential")
usethis::use_data(DA23_E1, overwrite = TRUE)

DA23_E2 <- read.csv("data-raw/source/DukeAmir2022E2.csv") |>
  dplyr::filter(nonsense_total==0) |>
  dplyr::mutate(explanation_length = nchar(why)) |>
  dplyr::select(gender, age, format, purchased, amount, mean_val, explanation_length) |>
  dplyr::mutate(gender = factor(gender, labels = c("male","female","other")),
                format = factor(format)) |>
  dplyr::rename(meanval = mean_val,
                elength = explanation_length) |>
  tibble::as_tibble()
levels(DA23_E2$format) <- c("quantity-integrated",
                            "quantity-sequential")
usethis::use_data(DA23_E2, overwrite = TRUE)



data(arithmetic, package = "SMPracticals")
arithmetic <- arithmetic |>
   dplyr::mutate(group = factor(group, labels = c("control 1", "control 2", "praise", "reprove", "ignore"))) |>
  dplyr::rename(score = y)
usethis::use_data(arithmetic, overwrite = TRUE)

popcorn <- read.table("data-raw/source/popcorn.txt",
                      header = TRUE) |>
  tibble::as_tibble() |>
  dplyr::mutate(brand = factor(brand, labels = c("national1", "national2", "local")),
                power = factor(power, labels = c("500W", "600W")),
                time = factor(time, labels = c("4m", "4m30s","5m")))
usethis::use_data(popcorn, overwrite = TRUE)

teller <- read.table("data-raw/source/teller.txt",
                      header = TRUE) |>
  tibble::as_tibble() |>
  dplyr::select(!id) |>
  dplyr::mutate(course = factor(tolower(course)),
         nweeks = factor(nweeks))
usethis::use_data(teller, overwrite = TRUE)

words <- read.table("data-raw/source/words.txt", header = TRUE) |>
  tibble::as_tibble() |>
   mutate(feedback = factor(feedback, labels = c("none",
                                                 "positive",
                                                 "negative")),
          material = factor(material, labels = c("low freq/low emotion",
                                                 "high freq/low emotion",
                                                 "high freq/high emotion")),
          age = factor(age, labels = c("fifth grade",
                                       "senior")))
usethis::use_data(words, overwrite = TRUE)

# Dataset 29: Sharma, Tully and Cryder (2021),
# Supplemental study 5
# Source: https://researchbox.org/111
data <- readxl::read_xlsx('data-raw/source/Sharma_Tully_Cryder-2021-Sup_study5.xlsx')


STC21_SS5 <- data |>
  dplyr::filter(IMC_correct == 1) |>
  dplyr::transmute(purchase = factor(tolower(Cond_Purchase)),
            debttype = factor(Condition),
            likelihood = meanDVs)
usethis::use_data(STC21_SS5, overwrite = TRUE)

#sinew::makeOxygen()

# Data 30: Walters and al. (2022+)
# Study 1 (logistic regression)
data <- readr::read_csv(file = "data-raw/source/WUTEF22_S1.csv")
colnames(data) <- tolower(colnames(data))
WUTEF22_S1 <- data |>
  select(-(v1:custom1)) |>
  filter(gc == 1) |>
  transmute(
    financial_advisor = factor(ifelse(q95 == 2, 0, 1), labels = c("no","yes")),
    epistemicness = (q88_7...30 + q88_8 + q88_9)/3,
     # epistemic1 = q88_7,
     # epistemic2 = q88_8,
     # epistemic3 = q88_9,
     aleatoriness = (q88_10...33 + q88_11 + q88_12)/3,
     # aleatory1 = q88_10,
     # aleatory2 = q88_11,
     # aleatory3 = q88_12,
     risk_perception1 = q87_1,
     risk_perception2 = q87_2,
     risk_perception3 = q87_3,
     # individual_stock = q88_1,
     # index_bonds = q88_2,
     # other_investments = q88_6,
    fin_literacy = factor(as.integer(I(q125 == 1) +   I(q127 == 5) + I(q128 == 4))),
         number_stocks = pmax(q91_1, 100),
         net_investments = q76,
         assets_other_value = q90
         ) |>
  tibble::as_tibble() |>
  usethis::use_data(WUTEF22_S1, overwrite = TRUE)

# Data 31: Halevy and Berson (2022)
HB22_S5 <- haven::read_sav("data-raw/source/JCR 2022 Study 5.sav") |>
  select(!c(Q10, citizenship, citizenship_2_TEXT)) |>
  rename(curstate = condition_state_now,
         predout = condition_dv_peace_war) |>
  mutate(likelihood_1yr = case_when(
    curstate == 0 & predout == 0 ~ Peace___peace_1,
    curstate == 0 & predout == 1 ~ Peace_war_1,
    curstate == 1 & predout == 0 ~ War_Peace_1,
    curstate == 1 & predout == 1 ~ War_War_1),
         likelihood_20yr = case_when(
           curstate == 0 & predout == 0 ~ Peace___peace_2,
           curstate == 0 & predout == 1 ~ Peace_war_2,
           curstate == 1 & predout == 0 ~ War_Peace_2,
           curstate == 1 & predout == 1 ~ War_War_2)
         ) |>
    select(c(age, gender, curstate, predout,
             likelihood_1yr, likelihood_20yr)) |>
  mutate(id = 1:n(),
         age = as.integer(age) + 17L,
         gender = factor(gender,
                            labels = tolower(levels(as_factor(gender)))),
         curstate = factor(curstate, labels = c("peace","war")),
         predout = factor(predout, labels = c("peace","war")),
         likelihood_1yr = as.integer(likelihood_1yr),
         likelihood_20yr = as.integer(likelihood_20yr)
         ) |>
  pivot_longer(cols = starts_with("lik"),
               names_to = "tempdist",
               values_to = "likelihood",
               names_transform = list(tempdist = as_factor),
               names_prefix = "likelihood_") |>
  relocate(id, likelihood, curstate, predout, tempdist, age, gender)
usethis::use_data(HB22_S5, overwrite = TRUE)

# Data 32: Labonte-Lemoyne et al. (Tech3Lab)
sexe <- readxl::read_xlsx(path = "data-raw/source/data_Tech3Lab.xlsx",
                       sheet = 3)$Sexe
LJLSFBM20 <- readxl::read_xlsx(path = "data-raw/source/data_Tech3Lab.xlsx",
                               sheet = 4) |>
  rename_all(tolower) |>
  mutate(subject_id = factor(as.integer(relevel(factor(subject_id), ref = "35"))),
         sex = factor(sexe, labels = c("man","woman"))) |>
  select(!(att_1:satis_3)) |>
  rename(id = subject_id,
         order = random,
         task_diff = diff_tache,
         phys_demand = demand_phys,
         attention = att,
         satisfaction = satis) |>
  dplyr::arrange(id, order) |>
  relocate(bmi, .after = parietal_beta) |>
  relocate(sex, .after = bmi) |>
  mutate(order = as.integer(order),
         position = factor(position, labels = c("standing","sitting")),
         phys_demand = factor(phys_demand, labels = c("mouse","touchpad")),
         task_diff = factor(task_diff, labels = c("easy", "difficult"))
         ) |>
  rename(ies = ies_stimulus_global)
usethis::use_data(LJLSFBM20, overwrite = TRUE)


# Data 33 and 34: Brodeur et al. (2021) (Tech3Lab)
BRLS21_T3 <- readxl::read_xlsx(path = "data-raw/source/data_Tech3Lab.xlsx",
                            sheet = 2) |>
  rename_all(tolower) |>
  mutate(task = factor(task, labels = c("phone","watch", "speaker","texting")),
         id = rep(factor(sample.int(n()/4, size = n()/4)), each  = 4L),
         total_violation = as.integer(total_violation)
         ) |>
           select(!participant) |>
  rename(nviolation = total_violation)|>
  dplyr::arrange(id, task)


usethis::use_data(BRLS21_T3, overwrite = TRUE)


BRLS21_EDA <- read.csv(
  file = "data-raw/source/Brodeur20_EDA.csv",
  header = TRUE) |>
  tibble::as_tibble() |>
  mutate(relative_time = as.integer(relative_time/1000L),
         id = factor(as.integer(factor(participant))),
         task = factor(tache, labels = c("baseline", "cell", "voicecall", "watch", paste0("task",1:6)))) |>
           filter(!task  %in% paste0("task",1:6)) |>
  select(!c(absolute_time,
         tache,
         participant)) |>
  mutate(task = factor(task)) |>
  rename(reltime = relative_time) |>
  relocate(id, reltime, task) |>
  arrange(id, reltime)
usethis::use_data(BRLS21_EDA, overwrite = TRUE)

# Datasets 34 and 35
library(reshape2)
# Following mess is extracted from the authors' code...

data_exp3 <- read.csv("data-raw/source/Wait_Study_Experiment3_final.csv")
data_exp3$Predicted_Intrinsic_Motivation_Index_LONG <- as.numeric(as.character(data_exp3$Predicted_Intrinsic_Motivation_Index_LONG))
data_exp3$Predicted_Intrinsic_Motivation_Index_SHORT <- as.numeric(as.character(data_exp3$Predicted_Intrinsic_Motivation_Index_SHORT))
data_exp3$Experienced_Intrinsic_Motivation_Index <- as.numeric(as.character(data_exp3$Experienced_Intrinsic_Motivation_Index))

data_exp3_melt<-melt(data_exp3, id.vars = "Waiting_Condition", measure.vars = c("Predicted_Intrinsic_Motivation_Index_LONG", "Predicted_Intrinsic_Motivation_Index_SHORT", "Experienced_Intrinsic_Motivation_Index"))
data_exp3_melt<-cbind(data_exp3_melt, rep(data_exp3$Participant_ID,3))
HOSM22_E3 <- subset(data_exp3_melt, (!(data_exp3_melt$Waiting_Condition=="L" &
                                                data_exp3_melt$variable=="Predicted_Intrinsic_Motivation_Index_SHORT") &
                                              !(data_exp3_melt$Waiting_Condition=="S" &
                                                  data_exp3_melt$variable=="Predicted_Intrinsic_Motivation_Index_LONG")))
HOSM22_E3$variable <- ifelse(HOSM22_E3$variable=="Predicted_Intrinsic_Motivation_Index_LONG" | HOSM22_E3$variable=="Predicted_Intrinsic_Motivation_Index_SHORT","prediction", "experience")
colnames(HOSM22_E3) <- c("Waiting_Condition", "Rating_type", "Intrinsic_Motivation_Score", "Participant_ID")

HOSM22_E3$Waiting_Condition <- ifelse(HOSM22_E3$Waiting_Condition=="L", "long", "short")
HOSM22_E3$Waiting_Condition <- as.factor(HOSM22_E3$Waiting_Condition)

# HOSM22_E3$Rating_type <- ifelse(HOSM22_E3$Rating_type=="prediction", -1, 1)
HOSM22_E3$Rating_type <- as.factor(HOSM22_E3$Rating_type)
HOSM22_E3$Participant_ID <- as.integer(factor(HOSM22_E3$Participant_ID))

colnames(HOSM22_E3) <- c("waiting","ratingtype","imscore","id")
HOSM22_E3 <- tibble::as_tibble(HOSM22_E3) |>
  mutate(id = factor(id)) |>
  arrange(id) |>
  relocate(id)
usethis::use_data(HOSM22_E3, overwrite = TRUE)

data_exp4 <- read.csv("data-raw/source/Wait_Study_Experiment4_final.csv")

#### Linear mixed effects model with interim rating time (continuous variable 2-18, centered on the mean) x rating type (predicted vs experienced) x interaction between interim rating time and rating type.
data_exp4_subset<-
  melt(data_exp4,
       id.vars = c("Participant_ID",
                   "Assigned_Number"),
       measure.vars = c("Predicted_Intrinsic_Motivation_Index_INTERIM",
                        "Experienced_Intrinsic_Motivation_Index_INTERIM"))

colnames(data_exp4_subset) <-
  c("Participant_ID",
    "interim_rating_time",
    "rating_type",
    "intrinsic_motivation_score")
data_exp4_subset$intrinsic_motivation_score <- as.numeric(as.character(data_exp4_subset$intrinsic_motivation_score))

data_exp4_subset$rating_type <- ifelse(data_exp4_subset$rating_type=="Experienced_Intrinsic_Motivation_Index_INTERIM", 1, -1)
data_exp4_subset$rating_type <- as.factor(data_exp4_subset$rating_type)

data_exp4_subset$centered_interim_rating_time <- as.numeric(as.character(data_exp4_subset$interim_rating_time)) - 10

HOSM22_E4 <- data_exp4_subset |>
  tibble::as_tibble() |>
  transmute(id = factor(as.numeric(factor(Participant_ID))),
            imscore = intrinsic_motivation_score,
            ratingtype = factor(
              rating_type,
              labels = c("prediction", #-1
                         "experience")), #+1
            irtime = as.integer(interim_rating_time) - 10) |>
  arrange(id)
usethis::use_data(HOSM22_E4, overwrite = TRUE)

# Dataset 36: protest
GSBE10 <- haven::read_sav(file = "data-raw/source/protest.sav") |>
  dplyr::transmute(protest = as_factor(protest),
                   likeability = round(liking*6)/6,
                   angry = angry,
                   respeval = respappr,
                   sexism = sexism)
usethis::use_data(GSBE10, overwrite = TRUE)

# Dataset 37: ResearchBox54, Study 1 (chi-square test)


s1 <- read.csv("data-raw/source/ResearchBox54/Data/Study 1 - Choose Charity.csv")

s1$donate01<-ifelse(s1$Condition=="Open-ended"&
                      s1$openended==0|
                      s1$Condition=="Quantity"&
                      s1$quantity==0, 0, 1)

s1$amount<-ifelse(s1$Condition=="Open-ended",
                  s1$openended_1_TEXT,
                  ifelse(s1$Condition=="Quantity"&
                           s1$quantity==888,
                         s1$quantity_TEXT,
                         ifelse(s1$Condition=="Quantity"&
                                  s1$quantity>0,
                                s1$quantity, NA)))

s1$amount0<-ifelse(s1$donate01==0, 0, s1$amount)


# Dataset excluding those who said they'd donate >$25 (misunderstood)
# This is one used in analyses but other spec. show same pattern/sig. level
s1u<-s1[!s1$amount0>25|
          is.na(s1$amount0),]

## Dataset ALSO excluding NA for amount when they indicated donating
s1d<-s1u[!is.na(s1u$amount0),]
MV23_S1 <- s1d |>
  dplyr::select(donatebefore, donate01,
                Condition, amount) |>
  dplyr::rename(before = donatebefore,
                donate = donate01,
                condition = Condition) |>
  dplyr::mutate(condition = factor(tolower(condition)),
                donate = as.integer(donate)) |>
  tibble::as_tibble()
usethis::use_data(MV23_S1, overwrite = TRUE)


# Dataset 38: ResearchBox54, one-way ANOVA (Study 4)

s4 <- read.csv("data-raw/source/ResearchBox54/Data/Study 4 - Lowest Option.csv")

s4$donate01<-ifelse(s4$Condition=="Open-ended"&s4$openended==0|
                      s4$Condition=="Quantity1"&s4$quantity1==0|
                      s4$Condition=="Quantity5"&s4$quantity5==0|
                      s4$Condition=="Quantity10"&s4$quantity10==0, 0, 1)

s4$amount0<-ifelse(s4$donate01==0, 0,
                   ifelse(s4$Condition=="Open-ended", s4$openended_1_TEXT,
                          ifelse(s4$Condition=="Quantity1"&s4$quantity1==888,
                                 s4$quantity1_TEXT,
                                 ifelse(s4$Condition=="Quantity1"&s4$quantity1>0,
                                        s4$quantity1,
                                        ifelse(s4$Condition=="Quantity5"&s4$quantity5==888,
                                               s4$quantity5_TEXT,
                                               ifelse(s4$Condition=="Quantity5"&s4$quantity5>0,
                                                      s4$quantity5,
                                                      ifelse(s4$Condition=="Quantity10"&s4$quantity10==888,
                                                             s4$quantity10_TEXT,
                                                             ifelse(s4$Condition=="Quantity10"&s4$quantity10>0,
                                                                    s4$quantity10, NA))))))))

s4$amount<-ifelse(s4$donate01==0, NA, s4$amount0)

# Participants in each condition
table(s4$Condition)

# Dataset excluding those who said more than $25 as amount (misunderstood)
# This is the one used
s4u<-s4[s4$amount0<=25|
          is.na(s4$amount0),]
MV23_S4 <- s4u |>
  dplyr::select(donate01,
                Condition, amount) |>
  dplyr::rename(donate = donate01,
                condition = Condition) |>
  dplyr::mutate(condition = factor(tolower(condition)),
                donate = as.integer(donate)) |>
  tibble::as_tibble()
usethis::use_data(MV23_S4, overwrite = TRUE)
sinew::makeOxygen(MV23_S4)


supph <- read.csv('data-raw/source/ResearchBox54/Data/Supp H - Prosocial Actions.csv')

supph$donate01<-ifelse(supph$Condition=="Open-ended"&
                         supph$openended==0|
                         supph$Condition=="Quantity"&
                         supph$quantity==0, 0, 1)

supph$amount<-ifelse(supph$Condition=="Open-ended", supph$openended_1_TEXT,
                     ifelse(supph$Condition=="Quantity"&
                              supph$quantity>0, supph$quantity, NA))

supph$amount0<-ifelse(supph$donate01==0, 0, supph$amount)

# Dataset 39 ResearchBox54, pro-social action (Wilcoxon test)

supph <- read.csv('data-raw/source/ResearchBox54/Data/Supp H - Prosocial Actions.csv')

supph$donate01<-ifelse(supph$Condition=="Open-ended"&
                         supph$openended==0|
                         supph$Condition=="Quantity"&
                         supph$quantity==0, 0, 1)

supph$amount<-ifelse(supph$Condition=="Open-ended", supph$openended_1_TEXT,
                     ifelse(supph$Condition=="Quantity"&
                              supph$quantity>0, supph$quantity, NA))

supph$amount0<-ifelse(supph$donate01==0, 0, supph$amount)

MV23_SH <- supph |>
  dplyr::select(donate01,
                Condition, amount) |>
  dplyr::rename(donate = donate01,
                condition = Condition) |>
  dplyr::mutate(condition = factor(tolower(condition)),
                donate = as.integer(donate)) |>
  tibble::as_tibble()
usethis::use_data(MV23_SH, overwrite = TRUE)
sinew::makeOxygen(MV23_SH)

# Dataset 40:
#
JZBJG22_E2 <- read.csv("data-raw/source/ResearchBox511/Data/e2_data copy.csv") |>
  dplyr::filter(Finished==1, #first narrowing down to people who finished the survey
                situationCorrect == 4,
                pilot == 0,
                flownPlane == 0,
                landedPlane== 0,
                nonsensical== 0,
                gender != 3) |>
  dplyr::mutate(condition = factor(condition, levels = c("video", "no video")),
                dvOrder = factor(dvOrder, levels = c("dying first", "pilot first"))) |>
  dplyr::rename(order = dvOrder,
                conf_dying = confidenceDying,
                conf_pilot = confidencePilot,
                land_plane = landedPlane,
                ease_imagining = easeImagining) |>
  dplyr::select(condition,
                order,
                conf_dying,
                conf_pilot,
                expertise,
                ease_imagining,
                gender)|>
  dplyr::mutate(gender = factor(gender, labels = c("man", "woman"))) |>
  tibble::as_tibble()
usethis::use_data(JZBJG22_E2, overwrite = TRUE)

FBC66_T1_mat <- rbind(c(18, 1, 1), c(8, 7, 5), c(3, 4, 13))
colnames(FBC66_T1_mat) <- c("0","1-2","3+")
rownames(FBC66_T1_mat) <- c("K","2","5")
FBC66_T1 <- tibble::tibble(count = as.numeric(FBC66_T1_mat),
                           grade = factor(rep(c("K","2","5"), length.out = 9)),
                           frequency = factor(rep(c("0","1-2","3+"), each = 3))) |>
  dplyr::mutate(grade = relevel(grade, ref = "K"))

usethis::use_data(FBC66_T1, overwrite = TRUE)

# Dataset 41
rb712rawDate <- haven::read_sav("data-raw/source/ResearchBox712-Study2A.sav")
SKD23_S2A <- rb712rawDate |>
  dplyr::select(PEF,
                MCHECK_PROPORTION,
                proportion) |>
  dplyr::rename_with(tolower) |>
  dplyr::rename(mcheck = mcheck_proportion)
  usethis::use_data(SKD23_S2A, overwrite = TRUE)

# Dataset 42: three-way ANOVA from ResearchBox 1401
LKUK24_S3 <- haven::read_sav("data-raw/source/ResearchBox1401/Study3.sav") |>
  dplyr::mutate(appropriation = as.numeric(appropriation),
                purchase = as.numeric(purchase),
                attitude = as.numeric(attitude),
                politideo = factor(conservativeliberal, labels = c("conservative","liberal")),
                prodcat = factor(apparel1food0, levels = c(0,1), labels = c("food","apparel")),
                histpowimbal = factor(context1control0, labels = c("control","primed")),
                age = as.integer(Age),
                gender = factor(Gender, levels = 1:4, labels = c("male","female","other/neither/both", "prefer not to answer")),
                .keep = "none")
usethis::use_data(LKUK24_S3, overwrite = TRUE)


# Dataset 42
LKUK24_S4 <- haven::read_sav("data-raw/source/ResearchBox1401/Study4.sav") |>
  dplyr::mutate(appropriation = as.numeric(Appropri),
                appreciation = as.numeric(Appreci),
                intent = as.numeric(Intent),
                purchase = as.numeric(Purchase),
                attitude = as.numeric(Attitude),
                politideo = factor(polit, levels = 1:2, labels = c("conservative","liberal")),
                chefdax = factor(chefdax, levels = 0:1, labels = c("not black","black")),
                brandaction = factor(condit, levels = 1:3, labels = c("peeking","permission","control")),
                age = as.integer(Age),
                gender = factor(Gender, levels = 1:4, labels = c("male","female","other/neither/both", "prefer not to answer")),
                minority = factor(RacialMinority, levels = 1:2, labels = c("yes","no")),
                .keep = "none")
usethis::use_data(LKUK24_S4, overwrite = TRUE)

# Dataset 43: Liu (2022), experiment 4 (ResearchBox 84)

L22_E4 <- haven::read_spss("source/ResearchBox84/Experiment 4.sav") |>
  dplyr::rename(social = IV_social1socialint2alone3,
                enjoyother = enjoyment_other,
                cutfreq = dv_cutfreq,
                cutintensity = dv_cutintense) |>
  dplyr::mutate(social = relevel(as_factor(social), ref = "alone"),
                gender = as_factor(gender),
                age = as.integer(age),
                cutfreq = as.integer(cutfreq),
                cutintensity = as.integer(cutintensity),
                ) |>
  dplyr::select(cutfreq, cutintensity, social, enjoyother, enjoyamount, age, gender)
levels(L22_E4$gender) <- tolower(levels(L22_E4$gender))
class(L22_E4$enjoyother) <- "integer" # needed for the process macro
class(L22_E4$enjoyamount) <- "integer"
attributes(L22_E4$enjoyother) <- NULL
attributes(L22_E4$enjoyamount) <- NULL
usethis::use_data(L22_E4, overwrite = TRUE)

# Dataset 44: Leckford et al. (2023), Study 3
# https://doi.org/10.1177/02654075221149955
LWSH23_S3 <- read.csv("source/ResearchBox777/LWSH23_S3.csv") |>
  dplyr::mutate(age = as.integer(age),
                gender = factor(tolower(gender)),
                cond = factor(tolower(cond)),
                relation_type = factor(tolower(relation_type))) |>
  dplyr::rename(needclosure = nfc,
                needsatis = needs,
                reltype = relation_type,
                rel = rel_val) |>
  tibble::as_tibble()
levels(LWSH23_S3$cond) <- c("directly rejected", "ghosted", "included")
LWSH23_S3$cond <- relevel(LWSH23_S3$cond, "included")
usethis::use_data(LWSH23_S3, overwrite = TRUE)

# Dataset 45
BM04_T2 <- data.frame(black = factor(rep(c("0", "1", "2"), length.out = 9)),
                      white = factor(rep(c("0", "1", "2"), each = 3)),
                      count = c(1103, 33, 6, 74, 46, 7, 19, 18, 17))
usethis::use_data(BM04_T2, overwrite = TRUE)

# Dataset 46
# https://www.opensym.org/wp-content/uploads/2018/07/OpenSym2018_paper_15-1.pdf
MH18_T1 <- tibble::tibble(
  neweditors = as.integer(c(247, 360, 397, 1068, 1512, 1651,
                            117, 191, 229, 496, 841, 1008)),
           period = factor(rep(c("3-4 weeks", "1-2 months", "2-6 months"),
                               length.out = 12)),
           group = factor(rep(rep(c("control", "invited"),
                                  each = 3L), length.out = 12)),
           edits = factor(rep(c("1-4 edits", "5+ edits"), each = 6)))
usethis::use_data(MH18_T1, overwrite = TRUE)

# Dataset 47
# https://researchbox.org/2945, Study 4
HBSC24_S4 <- read.csv("source/ResearchBox2945/study4_data.csv") |>
  dplyr::select(auth_mean, info_wordcount, cond) |>
  dplyr::mutate(cond = factor(cond)) |>
  dplyr::rename(authenticity = auth_mean,
                words = info_wordcount)
usethis::use_data(HBSC24_S4, overwrite = TRUE)

# Generate skeleton for documentation
for(file in list.files("../data",full.names = TRUE)){
  load(file)
  cat(sinew::makeOxygen(tools::file_path_sans_ext(basename(file))), file = "documentation.R", append = TRUE)
}
