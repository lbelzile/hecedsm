setwd(this.path::here())
library(dplyr)
#library(hecedsm)
corChatDat <- read.csv(file = "source/ResearchBox577/Data/Study1_Data_FINAL.csv")
DM22_S2 <- read.csv(file = "source/ResearchBox577/Data/Study2_cleaned_final.csv")
DM22_S3 <- read.csv(file = "source/ResearchBox577/Data/Study3_data.csv")
DM22_S4 <- read.csv(file = "source/ResearchBox577/Data/Study4.csv")

DM22_S4 <- DM22_S4 |>
  select(wager_continuous, condition) |>
  rename(wager = wager_continuous) |>
  mutate(condition = factor(condition, labels = c("afraid","not afraid")))
labels(DM22_S4$condition)
DM22_S4 <- tibble::as_tibble(DM22_S4)
usethis::use_data(DM22_S4, overwrite = TRUE)


DM22_S3 <- DM22_S3 |>
  filter(ac1 == "Other") |>
  select(appraisal_index,
         threat_index,
         general_index,
         condition,
         naiverealism) |>
  rename(threat = threat_index,
         general = general_index,
         appraisal = appraisal_index) |>
  mutate(condition = factor(condition,
                            labels = c("other","self")))
DM22_S3 <- tibble::as_tibble(DM22_S3)
usethis::use_data(DM22_S3, overwrite = TRUE)

DM22_S2 <- DM22_S2 |>
  select(age, gender, ideology, anxiety_index, anger_index) |>
  rename(anxiety = anxiety_index, anger = anger_index) |>
  mutate(gender = factor(tolower(gender)), ideology = factor(tolower(ideology))) |>
  mutate(age = as.integer(age))
DM22_S2 <- tibble::as_tibble(DM22_S2)
usethis::use_data(DM22_S2, overwrite = TRUE)

corChatDat$anxiety_self <- rowMeans(corChatDat[, c("self_anx_1", "self_anx_2", "self_anx_3", "self_anx_4")])

corChatDat$anxiety_other <- rowMeans(corChatDat[, c("other_anx_1", "other_anx_2", "other_anx_3", "other_anx_4")])

partner_Ling <- corChatDat[, c("ResponseId",
                               "Positive.Emotion",
                               "Negative.Emotion",
                               "Hedges",
                               "wordcount")]
colnames(partner_Ling) <- c(
  "PartnerId",
  "partner_Positive.Emotion",
  "partner_Negative.Emotion",
  "partner_Hedges",
  "partner_wordcount"
)
corChatDat <- dplyr::left_join(corChatDat, partner_Ling, by = "PartnerId")

#-Long format
corChatDat_anx <- reshape(
  corChatDat,
  varying = list(
    c("self_anx_1", "other_anx_1"),
    c("self_anx_2", "other_anx_2"),
    c("self_anx_3", "other_anx_3"),
    c("self_anx_4", "other_anx_4"),
    c("anxiety_self", "anxiety_other")
  ),
  v.names = c("anx_1", "anx_2", "anx_3", "anx_4", "anxiety"),
  idvar = "ResponseId",
  timevar = "target",
  times = c("self", "other"),
  direction = "long"
)
DM22_S1_long <- corChatDat_anx |>
  select(anxiety, target, vote, Group) |>
  rename(group = Group) |>
  arrange(group) |>
  mutate(group = factor(group))
levels(DM22_S1_long$group) <-
  stringr::str_remove(levels(DM22_S1_long$group), "group ")
rownames(DM22_S1_long) <- NULL
DM22_S1_long <- tibble::as_tibble(DM22_S1_long)
usethis::use_data(DM22_S1_long, overwrite = TRUE)


DM22_S1 <- corChatDat |>
  select(
    age,
    gender,
    partner_Positive.Emotion,
    partner_Negative.Emotion,
    partner_wordcount,
    partner_Hedges,
    Positive.Emotion,
    Negative.Emotion,
    wordcount,
    Hedges,
    Group,
    anxiety_self,
    anxiety_other,
    vote,
    pol_orientation
  ) |>
  rename(
    pos_emotion_part = partner_Positive.Emotion,
    neg_emotion_part = partner_Negative.Emotion,
    hedges_part = partner_Hedges,
    pos_emotion = Positive.Emotion,
    neg_emotion = Negative.Emotion,
    group = Group,
    hedges = Hedges,
    wordcount_part = partner_wordcount,
    polideo = pol_orientation
    ) |>
  arrange(group) |>
  mutate(age = as.integer(age),
         gender = factor(gender, labels = c("male","female","nonbinary or other")),
         vote = factor(vote, labels = c("Republican","Democrat")),
         group = factor(group))
levels(DM22_S1$group) <-
  stringr::str_remove(levels(DM22_S1$group), "group ")
rownames(DM22_S1) <- NULL
DM22_S1 <- tibble::as_tibble(DM22_S1)
usethis::use_data(DM22_S1, overwrite = TRUE)


raw <- readr::read_csv("source/ResearchBox231/Data/Raw Data_Research Box.csv", name_repair = "universal")

RT22_S2 <- raw |>
  filter(Attention.Check == 1) |>
  select(What.is.your.gender.,
         What.is.your.age.,
         Subjective.Wealth.1,
         Subjective.Wealth.2,
         Subjective.Wealth.3,
         Subjective.Wealth.4,
         To.what.extent.did.you.try.to.make.decisions.as.you.would.in.your.own.life.,
         Total.Number.of.Expensive.Decisions,
         Total.Spending,
         Number.of.Overdrafts,
         Condition) |>
  rename(gender = What.is.your.gender.,
         age = What.is.your.age.,
         decision = To.what.extent.did.you.try.to.make.decisions.as.you.would.in.your.own.life.,
         nexpdec = Total.Number.of.Expensive.Decisions,
         totspend = Total.Spending,
         nover = Number.of.Overdrafts,
         condition = Condition) |>
  mutate(gender = factor(gender, labels = c("male","female","other")),
         age = as.integer(age),
         condition = factor(condition),
         nexpdec = as.integer(nexpdec),
         subwealth = (Subjective.Wealth.1 + Subjective.Wealth.2 + 16 - Subjective.Wealth.3 - Subjective.Wealth.4)/4) |>
  select(!c(Subjective.Wealth.1,
            Subjective.Wealth.2,
            Subjective.Wealth.3,
            Subjective.Wealth.4))
RT22_S2 <- tibble::as_tibble(RT22_S2)
usethis::use_data(RT22_S2, overwrite = TRUE)

raw <- readr::read_csv("source/ResearchBox231/Data/Study 4 Raw Data_Research Box.csv", name_repair = "universal") |>
  filter(Have.you.previously.participated.in.a.very.similar.survey.in.the.past..Your.answer.will.not.impact.your.compensation.for.this.survey. == 2,
         Check.1 == 1,
         Check.2 == 1,
         Check.3 == 1)
RT22_S4 <- raw |>
  mutate(subjectivewealth = rowMeans(select(raw, Subjective.Wealth.1:Subjective.Wealth.3)) + 300 - rowMeans(select(raw, Subjective.Wealth.4:Subjective.Wealth.6)),
         preduncertain = rowMeans(select(raw, Prediction.Uncertainty.1:Prediction.Uncertainty.2)) + 200 - rowMeans(select(raw, Prediction.Uncertainty.3:Prediction.Uncertainty.4))) |>
  select(Gender,
         Age,
         #Income,
         Pay.Frequency,
         Expense.Frequency,
         subjectivewealth,
         preduncertain) |>
  rename(gender = Gender,
         age = Age,
         #income = Income,
         payfreq = Pay.Frequency,
         expensfreq = Expense.Frequency) |>
  mutate(gender = factor(gender, labels = c("male","female","other")),
         age = as.integer(age),
         payfreq = factor(payfreq, levels = c("Daily","Weekly"), labels = c("daily","weekly")),
         expensfreq = factor(expensfreq,levels = c("Daily","Weekly"),  labels = c("daily","weekly")))
RT22_S4 <- tibble::as_tibble(RT22_S4)
usethis::use_data(RT22_S4, overwrite = TRUE)


raw <- readr::read_csv("source/ResearchBox231/Data/Study 5 Raw Data_Research Box.csv", name_repair = "universal") |>
  filter(Attention.Check == 1,
         Do.you.believe.you.have.taken.this.study.in.the.past..Your.answer.will.not.impact.your.compensation.for.this.survey. == 2)
RT22_S5 <- raw |>
  mutate(subjectivewealth = rowMeans(select(raw, Subjective.Wealth.1:Subjective.Wealth.3)) + 300 - rowMeans(select(raw, Subjective.Wealth.4:Subjective.Wealth.6)),
         preduncertain = rowMeans(select(raw, Prediction.Uncertainty.1:Prediction.Uncertainty.2)) + 200 - rowMeans(select(raw, Prediction.Uncertainty.3:Prediction.Uncertainty.4))) |>
  select(What.is.your.gender.,
         What.is.your.age.,
         subjectivewealth,
         preduncertain,
         valence,
         arousal,
         power,
         Condition,
         Number.of.Expensive.Decisions,
         Total.Spending) |>
  rename(gender = What.is.your.gender.,
         age = What.is.your.age.,
         nexpdec = Number.of.Expensive.Decisions,
         totspend = Total.Spending,
         condition = Condition) |>
  mutate(gender = factor(gender, labels = c("male","female","other")),
         nexpdec = as.integer(nexpdec),
         valence = as.integer(valence),
         arousal = as.integer(arousal),
         power = as.integer(power),
         age = as.integer(age),
         condition = factor(condition,
                            levels = c("Bi-Weekly","Daily"),
                            labels = c("bi-weekly","daily")))
RT22_S5 <- tibble::as_tibble(RT22_S5)
usethis::use_data(RT22_S5, overwrite = TRUE)

raw <- read.csv("data-raw/source/ResearchBox2061/Data/Study 2B Clamentine with cues three controls no prolific.csv")
names(raw) <- base::tolower(names(raw))
SE24_S2B <- raw |>
  mutate(gender = factor(sex, labels = c("male", "female", "other")),
         olfactory = (olfactory1 + olfactory2 + olfactory3)/3,
         involve = (involve1 + involve2)/2,
         evaluation = (evaluation1 + evaluation2 + evaluation3)/3) |>
  select(age, gender, cues, picture, like, involve, evaluation, olfactory) |>
  mutate(picture = factor(picture, labels = c("absent","present")),
         cues = factor(cues, labels= c("one", "two")))
SE24_S2B <- tibble::as_tibble(SE24_S2B)
usethis::use_data(SE24_S2B, overwrite = TRUE)


raw <- read.csv("data-raw/source/ResearchBox2061/Data/OLF CUT WHOLE ENFAS.csv")
names(raw) <- base::tolower(names(raw))
SE24_S3 <- raw |>
  mutate(gender = factor(sex, labels = c("male", "female", "other")),
         olfactory_cut = rowMeans(select(raw, olfactory11:olfactory23)),
         olfactory_whole = rowMeans(select(raw, olfactory11:olfactory23)),
         enfas =  rowMeans(select(raw, enfas1:enfas11)),
         involve = (involve1 + involve2)/2,
         evaluation_cut = rowMeans(select(raw, evaluation11:evaluation13)),
         evaluation_whole = rowMeans(select(raw, evaluation21:evaluation23)),
         id = factor(seq_len(nrow(raw)))) |>
  filter(attention == 2) |>
  select(id, age, gender, like, involve,  evaluation_cut, evaluation_whole, olfactory_cut, olfactory_whole, enfas) |>
  tidyr::pivot_longer(cols = c(evaluation_whole, evaluation_cut, olfactory_whole, olfactory_cut),
                      values_to = c("evaluation","olfactory"),
                      names_pattern = "(.*)_(.*)",
                      names_to = c(".value", "lemon")) |>
  mutate(lemon = factor(lemon))

SE24_S3 <- tibble::as_tibble(SE24_S3)
usethis::use_data(SE24_S3, overwrite = TRUE)
