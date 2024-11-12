setwd(this.path::here())
library(dplyr)

corChatDat <- read.csv(file = "source/ResearchBox577/Data/Study1_Data_FINAL.csv")
DM22_S2 <- read.csv(file = "source/ResearchBox577/Data/Study2_cleaned_final.csv")
DM22_S3 <- read.csv(file = "source/ResearchBox577/Data/Study3_data.csv")
DM22_S4 <- read.csv(file = "source/ResearchBox577/Data/Study4.csv")

DM22_S4 <- DM22_S4 |>
  select(wager_continuous, condition) |>
  rename(wager = wager_continuous) |>
  mutate(condition = factor(condition, labels = c("afraid","not afraid")))
labels(DM22_S4$condition)
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

usethis::use_data(DM22_S3, overwrite = TRUE)

DM22_S2 <- DM22_S2 |>
  select(age, gender, ideology, anxiety_index, anger_index) |>
  rename(anxiety = anxiety_index, anger = anger_index) |>
  mutate(gender = factor(tolower(gender)), ideology = factor(tolower(ideology))) |>
  mutate(age = as.integer(age))
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
usethis::use_data(DM22_S1, overwrite = TRUE)
