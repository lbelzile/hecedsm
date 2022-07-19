#' @title Bastian, Jetten and Ferris (2014)
#' @description Data for Study 1 of Bastian, Jetten and Ferris (2014) social effects of pain. Study 1 contains a one-way analysis of variance, a series of t-test, a mediation analysis and some linear regression.
#' 
#' The response, \code{bonding}, is the average of 7 questions measured on a seven point scale, ranging from strongly disagree (1) to strongly agree (7).
#' 
#' @format A data frame with 54 rows and 10 variables:
#' \describe{
#'   \item{\code{bonding}}{[double] score for the perceived bonding with strangers, average of Likert scales}
#'   \item{\code{condition}}{[factor] experimental condition, either \code{Control} or \code{Pain}} 
#' \item{\code{pain}}{Likert scale rating for the amount of pain, 'How intense was the pain you experienced?', ranging from not at all painful (1) to intensely painful (10)}
#' \item{\code{unpleasant}}{Likert scale rating for unpleasanteness, 'How unpleasant was the pain you experienced?' ranging from not at all (1) to the most intense bad feeling imaginable (10)}
#' \item{\code{positive}}{PANAS score for positive affect}
#' \item{\code{negative}}{PANAS score for negative affect}
#' \item{\code{threat}}{average ALES subscale for the perception of the physical task}
#' \item{\code{challenge}}{average ALES subscale for the perception of the physical task}
#' \item{\code{groupsize}}{size of group during experiment}
#' \item{\code{age}}{age of participant}
#' \item{\code{gender}}{[factor] gender, either male or female}
#'}
#' @references  Bastian, B., Jetten, J., & Ferris, L. J. (2014). \emph{Pain as Social Glue: Shared Pain Increases Cooperation}. Psychological Science, 25(\bold{11}), 2079–2085. <https://doi.org/10.1177/0956797614545886>
"BJF14_S1"

#' @title Baumann, Seifert-Kessell and Jones (1992)
#' @description Experimental dtudy on the effectiveness of different reading strategies on understanding of children.
#' @format A data frame with 66 rows and 6 variables:
#' \describe{
#'   \item{\code{group}}{[factor] experimental group, one of directed reading-thinking activity (DRTA), think-aloud (TA) and directed reading group (DR)}
#'   \item{\code{pretest1}}{[integer] score (out of 16) on pretest for the error detection task}
#'   \item{\code{pretest2}}{[integer] score (out of 15) on second pretest using a comprehension monitoring questionnaire}
#'   \item{\code{posttest1}}{[integer] score (out of 16) on an error detection task}
#'   \item{\code{posttest2}}{[integer] score (out of 18) on an expanded comprehension monitoring questionnaire}
#'   \item{\code{posttest3}}{[integer] number of correct item, ranging from 0 to 56 on the Degrees of Reading Power test, a cloze test} 
#'}
#' @references   Baumann, J. F., Seifert-Kessell, N., & Jones, L. A. (1992). \emph{Effect of Think-Aloud Instruction on Elementary Students’ Comprehension Monitoring Abilities}. Journal of Reading Behavior, 24(\bold{2}), 143–172. <https://doi.org/10.1080/10862969209547770>
"BSJ92"

#' @title Clayton (2018)
#' @description Study by A. Clayton in Lesotho "to test whether citizens express less gender bias after 6-years of exposure to quota-elected women village representatives". The data are clustered by village and electoral district.
#'
#' @format A data frame with 101 rows and 7 variables:
#' \describe{
#'   \item{\code{age}}{[integer] age of respondant}
#'   \item{\code{female}}{[integer] indicator variable, 1 if female, 0 otherwise}
#'   \item{\code{village}}{[factor] village name}
#'   \item{\code{ED}}{[integer] electoral division code}
#'   \item{\code{quota}}{[integer] experimental condition, whether a gender quota is enforced (1) or not (0)}
#'   \item{\code{dscore}}{[double] d-score for Implicit Association Tests (IAT)}
#'   \item{\code{under25}}{[integer] indicator variable, 1 if the person is 25 or under, 0 otherwise} 
#'}
#' @references Clayton, A. (2018). \emph{Do Gender Quotas Really Reduce Bias? Evidence from a Policy Experiment in Southern Africa}. Journal of Experimental Political Science, 5(\bold{3}), 182-194. <https://doi.org/10.1017/XPS.2018.8>
"C18"


#' @title DATASET_TITLE
#' @description DATASET_DESCRIPTION
#' @format A data frame with 469 rows and 6 variables:
#' \describe{
#'   \item{\code{age}}{integer COLUMN_DESCRIPTION}
#'   \item{\code{condition}}{integer COLUMN_DESCRIPTION}
#'   \item{\code{limits}}{double COLUMN_DESCRIPTION}
#'   \item{\code{compr}}{double COLUMN_DESCRIPTION}
#'   \item{\code{persp}}{double COLUMN_DESCRIPTION}
#'   \item{\code{change}}{double COLUMN_DESCRIPTION} 
#'}
#' @details DETAILS


#' @title DATASET_TITLE
#' @description DATASET_DESCRIPTION
#' @format A data frame with 1760 rows and 6 variables:
#' \describe{
#'   \item{\code{MAE}}{double COLUMN_DESCRIPTION}
#'   \item{\code{adaptation}}{integer COLUMN_DESCRIPTION}
#'   \item{\code{fontsize}}{integer COLUMN_DESCRIPTION}
#'   \item{\code{position}}{integer COLUMN_DESCRIPTION}
#'   \item{\code{obsid}}{integer COLUMN_DESCRIPTION}
#'   \item{\code{group}}{integer COLUMN_DESCRIPTION} 
#'}
#' @details DETAILS


#' @title Liu et al. (2022) Study 1
#' @description 
#'
#' 
#' @format A data frame with 200 rows and 5 variables:
#' \describe{
#'   \item{\code{appreciation}}{double response variable}
#'   \item{\code{role}}{[factor] }
#'   \item{\code{form}}{[factor] form of communication, one of \code{email}, \code{text}, \code{phone} or \code{other}}
#'   \item{\code{gender}}{[factor] gender, one of \code{male}, \code{female} or \code{other}}
#'   \item{\code{age}}{[double] age of participant} 
#'}
#' @details DETAILS
"LRMM22_S1"
