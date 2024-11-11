library(dplyr)
setwd("source/ResearchBox231/Data/")
raw <- readr::read_csv("Raw Data_Research Box.csv", name_repair = "universal")

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
usethis::use_data(RT22_S2, overwrite = TRUE)

raw <- readr::read_csv("Study 4 Raw Data_Research Box.csv", name_repair = "universal") |> 
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
usethis::use_data(RT22_S4, overwrite = TRUE)


raw <- readr::read_csv("Study 5 Raw Data_Research Box.csv", name_repair = "universal") |> 
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
usethis::use_data(RT22_S5, overwrite = TRUE)
