% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/documentation.R
\docType{data}
\name{HB22_S5}
\alias{HB22_S5}
\title{Halevy and Berson (2022), Study 5}
\format{
A data frame with 554 rows and 7 variables:
\describe{
  \item{\code{id}}{[integer] identifier of participant}
  \item{\code{likelihood}}{[integer] likelihood of an outcome on a 7 point Likert scale given the current state}
  \item{\code{curstate}}{[factor] factor describing the current state of Velvetia, one of \code{peace} or \code{war}}
  \item{\code{predout}}{[factor] predicted outcome, one of \code{peace} or \code{war}}
  \item{\code{tempdist}}{[factor] within-subject factor for the temporal distance, either next year (\code{1yr}) or far future (\code{20yr})}
  \item{\code{age}}{[integer] age of participant}
  \item{\code{gender}}{[factor] gender of participant}
}
}
\source{
ResearchBox 567, \url{https://researchbox.org/567}, licensed under CC BY 4.0
}
\usage{
HB22_S5
}
\description{
Study 5 of Halevy and Berson (2022), who aimed to demonstrate that events in the distant future rather than the near future influenced the prospect of peace, along with the degree of abstractness.
The experimental design is a "2 (current state: war vs. peace) by 2 (predicted outcome: war vs. peace) by 2 (temporal distance: next year vs. twenty years into the future) mixed design", with current state and predicted outcome as between-subject factors and temporal distance as within-subject factor. The response is the estimated likelihood of each outcome on a 7-point Likert scale ranging from extremely unlikely (1) to extremely likely (7). Data are presented in long-format.
The question asked was of the form «There is currently [war/peace] between the two tribes in Velvetia.  Thinking about [next year/in 20 years], how likely is it that there will be [war/peace] in Velvetia?»
}
\references{
Halevy, N., & Berson, Y. (2022). Thinking about the distant future promotes the prospects of peace: A construal-level perspective on intergroup conflict resolution. Journal of Conflict Resolution, 66(6), 1119–1143. \doi{10.1177/00220027221079402}
}
\keyword{datasets}
