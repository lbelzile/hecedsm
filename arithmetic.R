#' Teaching Arithmetic Data
#'
#' 45 school pupils were divided at random into 5 groups of size 9. Groups A
#' and B were taught arithmetic in separate classes by the usual method.
#' Groups C, D, and E were taught together for several days.  On each day group
#' C were publically praised, group D were publically reproved, and group E
#' were ignored.  The responses are from a standard test taken by all pupils at
#' the end of the period.
#'
#'
#' @name arithmetic
#' @docType data
#' @format A data frame with 45 observations on the following 2 variables.
#' \describe{ \item{group}{a factor with levels \code{A} \code{B} \code{C}
#' \code{D} \code{E}} \item{y}{a numeric vector} }
#' @references Davison, A. C. (2003) \emph{Statistical Models}.  Cambridge
#' University Press. Page 427.
#' @source Unpublished lecture notes, Imperial College, London.
#' @keywords datasets
#' @examples
#'
#' data(arithmetic)
#' anova(aov(y ~ group, data = arithmetic))
NULL
