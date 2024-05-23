setwd(paste0(this.path::here(),"/source/ResearchBox366/"))
ERRO_pilot <- readxl::read_xlsx("ERRO_pilot_rating.xlsx") |>
  dplyr::filter(problem == 0) |>
  dplyr::select(!c(problem, V1)) |>
  dplyr::mutate(id = dplyr::row_number())
ERRO_pilot_long <- ERRO_pilot |>
  tidyr::pivot_longer(cols = !c(id, female, age, negot_class),
                      names_to = c(".value", "measure"),
                      names_pattern = "(.*)_(.*)") |>
  tidyr::pivot_longer(cols = !c(id, female, age, negot_class, measure),
                      names_to = "item",
                      values_to = "score") |>
  dplyr::mutate(
    item = factor(item),
    category  = factor(ifelse(item %in% c("clean","mover","tutor"),
                              "service",
                              "product")),
    id = factor(id),
    negotcl = factor(negot_class),
    age = as.integer(age),
    gender = factor(ifelse(female ==1, "female", "male"))) |>
  dplyr::select(! c(female, negot_class)) |>
  dplyr::filter(measure == "erro") |>
  dplyr::select(!measure) |>
  dplyr::select(id, score, item, category, negotcl, gender, age)
HS22_P <- ERRO_pilot_long
usethis::use_data(HS22_P, overwrite = TRUE)

HS22_S2 <- readxl::read_xlsx("ERRO_S2_data.xlsx") |>
  dplyr::filter(att_check == 3) |>
  dplyr::mutate(erro = factor(ifelse(erro == 0, "product","service"))) |>
  dplyr::rename(deal = deal_import,
                relation = relation_import,
                dealpts1 = dealpoints_choice1,
                dealpts2 = dealpoints_choice2) |>
  dplyr::select(erro, relation, deal,
                slope, dealpts1, dealpts2)

usethis::use_data(HS22_S2, overwrite = TRUE)
# Chris, the cleaner providing his services as a house cleaner /
# Chris, the seller selling his almost-new condition vacuum
