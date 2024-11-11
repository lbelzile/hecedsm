setwd(this.path::here())
library(dplyr)

corChatDat <- read.csv(file = "source/ResearchBox577/Data/Study1_Data_FINAL.csv")
DM22_S2 <- read.csv(file = "source/ResearchBox577/Data/Study2_cleaned_final.csv")
DM22_S3 <- read.csv(file = "source/ResearchBox577/Data/Study3_data.csv")
DM22_S4 <- read.csv(file = "source/ResearchBox577/Data/Study4.csv")

DM22_S4 <- DM22_S4 |>
  select(wager_continuous, condition) |>
  rename(wager = wager_continuous) |>
  mutate(condition = factor(condition, labels = c("afraid","not")))
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
         appraisal = appraisal_index)

usethis::use_data(DM22_S3, overwrite = TRUE)

DM22_S2 <- DM22_S2 |>
  select(age, gender, ideology, anxiety_index, anger_index) |>
  rename(anxiety = anxiety_index, anger = anger_index) |>
  mutate(gender = factor(tolower(gender)), ideology = factor(tolower(ideology)))
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
  arrange(group)
levels(DM22_S1_long$group) <-
  stringr::str_remove(levels(DM22_S1_long$group), "group ")
rownames(DM22_S1_long) <- NULL
usethis::use_data(DM22_S1_long, overwrite = TRUE)


DM22_S1 <- corChatDat |>
  select(
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
    vote
  ) |>
  rename(
    partner_pos_emotion = partner_Positive.Emotion,
    partner_neg_emotion = partner_Negative.Emotion,
    pos_emotion = Positive.Emotion,
    neg_emotion = Negative.Emotion,
    group = Group
    ) |>
  arrange(group) |>
  mutate(group = factor(group))
levels(DM22_S1$group) <-
  stringr::str_remove(levels(DM22_S1$group), "group ")
rownames(DM22_S1) <- NULL
usethis::use_data(DM22_S1, overwrite = TRUE)
