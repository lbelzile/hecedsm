% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/documentation.R
\docType{data}
\name{MV23_S4}
\alias{MV23_S4}
\title{Moon and vanEpps (2023), Study 4}
\format{
A data frame with 996 rows and 3 variables:
\describe{
  \item{\code{donate}}{[integer] did people choose to donate (donate before to this charity? 0 for no, 1 for yes.}
  \item{\code{condition}}{[factor] experimental condition, either an \code{open-ended} amount or a suggested amount of \code{quantity1}, \code{quantity5} or \code{quantity10} for one, five and 10 dollars.}
  \item{\code{amount}}{[double] amount of proposed donation, \code{NA} if the person declined to donate}
}
}
\source{
Research Box 54, \url{https://researchbox.org/54}, licensed under CC BY 4.0
}
\usage{
MV23_S4
}
\description{
The authors studied the impact on donation amount of manipulating the minimal suggested amount. The benchmark was an open-ended box, with quantity featuring a minimum value, 15$, 25$ or an alternative amount. The authors also recorded whether the person had donated before.
}
\references{
Moon, A. and EM VanEpps (2023). \emph{Giving Suggestions: Using Quantity Requests to Increase Donations}, Journal of Consumer Research, 50(1), 190–210.\doi{10.1093/jcr/ucac047}
}
\keyword{datasets}
