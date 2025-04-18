% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/documentation.R
\docType{data}
\name{SKD23_S2A}
\alias{SKD23_S2A}
\title{Sokolova el al. (2023), Study 2A}
\format{
A data frame with 802 rows and 3 variables:
\describe{
  \item{\code{pef}}{[double] vector of perceived environmental friendliness}
  \item{\code{mcheck}}{[double] manipulation check for proportion}
  \item{\code{proportion}}{[double] proportion of plastic to paper}
}
}
\source{
Research Box 712, \url{https://researchbox.org/712}, licensed under CC BY 4.0
}
\usage{
SKD23_S2A
}
\description{
The study considers the environmental perception of packaging when
objects contain paper/cardboard wrapping, in addition to plastic container. The
authors postulated that the more the quantity of paper, the more ecofriendly the
package was perceived to be and that this relations increases with the proportion
of paper wrapping relative to plastic. The study used a between-subject design with
four categories, and recruited 802 participants on MTurk.
}
\examples{
data(SKD23_S2A, package = "hecedsm")
# Treat data as continuous
linmod <- lm(pef ~ proportion, data = SKD23_S2A)
anova(linmod)
anovamod <- lm(pef ~ factor(proportion), data = SKD23_S2A)
margmean <- anovamod |>  emmeans::emmeans(specs = "proportion")
emmeans::contrast(margmean,
 method = list(refvshalf = c(1, -1, 0, 0),
               refvsone =  c(1, 0, -1, 0),
               refvstwo =  c(1, 0, 0, -1)))
}
\references{
Sokolova T, Krishna A, Döring T. (2023) \emph{Paper Meets Plastic: The Perceived Environmental Friendliness of Product Packaging}. Journal of Consumer Research, 50(3), 468–491. \doi{10.1093/jcr/ucad008}
}
\keyword{datasets}
