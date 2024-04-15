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
                      values_to = "score")
