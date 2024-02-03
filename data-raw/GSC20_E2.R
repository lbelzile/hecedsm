
library(dplyr)    # for |>, mutate(), rename()
library(osfr)     # retrieve the authors' files



# **************************************************************************
# IMPORT THE AUTHORS' DATASET ####
# **************************************************************************
if (!dir.exists("data/Experiment_2")) {
  dir.create("data/Experiment_2", recursive = TRUE)
  osf_retrieve_node("66gf4") |>
    osf_ls_files(path = "Experiment 2") |>
    osf_download(path = "data/Experiment_2", recurse = TRUE)
}
ID_t2       <- read.csv("data/Experiment_2/R code & data/Experiment2_wide_data.csv", header=TRUE)
study2final <- read.csv("data/Experiment_2/R code & data/Experiment2_long_data.csv")
TE          <- read.csv("data/Experiment_2/R code & data/Experiment2_memory_data.csv")


# Check the descriptive statistics against the authors' reports on 690-2.
nrow(ID_t2)                               # 581 subjects
table(ID_t2$gender)/length(ID_t2$gender)  # 44% male; the authors also reported 44% female
range(ID_t2$age)                          # 18-72; the authors report 18-64
table(ID_t2$TEAM)/length(ID_t2$TEAM)      # 69% Democratic


# Mean-center the data for fidelity to the authors' analyses. This command
# gives the same result as the authors' center_sweep().
study2final[, 5:8 ] <- apply(
  X      = study2final[, 5:8],
  MARGIN = 2,
  FUN    = function (x) scale(x, scale = FALSE))


# Give the variables more descriptive names. Then recode the treatment as
# the authors' did, so that it is "effect-coded": -1 for the control group,
# +1 for the treatment. (See page 691-1 of their article for their
# discussion of their coding.)
study2final <- study2final |>
  rename(
    help          = cond,
    sceneImagery  = SC,
    personImagery = PV_1,
    perspTaking   = PT,
    willingToHelp = WH) |>
  mutate(help = factor(help, labels = c("control", "episodic")))


# Check means as reported in Table 2 (page 692) of the Gaesser et al.
# article. The means generated here are a perfect match.
study2final |>
  select(help, sceneImagery, personImagery, perspTaking) |>
  group_by(help) |>
  summarize_all(mean)

GSC20_E2 <- study2final |>
  tibble::as_tibble() |>
  mutate(MID = factor(as.integer(as.factor(MID))),
         group = factor(group, labels = c("in", "out")),
         story = factor(story)) |>
  rename(id = MID,
         scene_imagery = sceneImagery,
         person_imagery = personImagery,
         persp_taking = perspTaking,
         willing_help = willingToHelp) |>
  tibble::as_tibble() |>
  arrange(id, story)

IDs <- ID_t2 |>
  tibble::as_tibble() |>
  dplyr::mutate(MID = factor(as.integer(as.factor(MID))),
                TEAM = factor(TEAM, levels = c("D","R"),
                              labels = c("Democrat","Republican")),
                cond = factor(cond, labels = c("control", "episodic")),
                gender = factor(gender, labels = c("female","male"))
  ) |>
  dplyr::rename(team = TEAM, id = MID, help = cond)
attrs <- attributes(GSC20_E2)
attrs$auxiliary <- IDs
attributes(GSC20_E2) <- attrs
usethis::use_data(GSC20_E2, overwrite = TRUE)
