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
#' @references  Bastian, B., Jetten, J., & Ferris, L. J. (2014). \emph{Pain as Social Glue: Shared Pain Increases Cooperation}. Psychological Science, 25(\bold{11}), 2079–2085. \url{https://doi.org/10.1177/0956797614545886}
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
#' @references   Baumann, J. F., Seifert-Kessell, N., & Jones, L. A. (1992). \emph{Effect of Think-Aloud Instruction on Elementary Students’ Comprehension Monitoring Abilities}. Journal of Reading Behavior, 24(\bold{2}), 143–172. \url{https://doi.org/10.1080/10862969209547770}
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
#' @references Clayton, A. (2018). \emph{Do Gender Quotas Really Reduce Bias? Evidence from a Policy Experiment in Southern Africa}. Journal of Experimental Political Science, 5(\bold{3}), 182-194. \url{https://doi.org/10.1017/XPS.2018.8}
"C18"


#' @title Grossman and Kross (2014) study 3
#' @description This study focuses on the wise reasoning of people when dealing with problems of other (vs their own) depending on their perspective.
#' @format A data frame with 469 rows and 6 variables:
#' \describe{
#'   \item{\code{age}}{[factor] age group, either \code{young} or \code{old}}
#'   \item{\code{condition}}{[factor] experimental condition, one of \code{self immersed}, \code{self distanced}, \code{other immersed} and \code{other distanced}}
#'   \item{\code{limits}}{[double] score for the "recognition of limits of knowledge"}
#'   \item{\code{compr}}{[double] score for the "search for a compromise"}
#'   \item{\code{persp}}{[double] score for the "consideration of others' perspectives"}
#'   \item{\code{change}}{[double] score for the "recognition of change"}
#'}
#' @references   Grossmann, I., & Kross, E. (2014). \emph{Exploring Solomon’s Paradox: Self-Distancing Eliminates the Self-Other Asymmetry in Wise Reasoning About Close Relationships in Younger and Older Adults.} Psychological Science, 25(\bold{8}), 1571–1580. \url{https://doi.org/10.1177/0956797614535400}
"GK14_S3"


#' @title Lages, Boyle and Jenkins (2017) Study 1A
#'
#' @description Data for a study on visual acuity of
#' participants. The data represent the
#' number of words correctly detected at different font
#' size; interest is in effect of illusory contraction on
#' detection. The participants were dichotomized in two
#' groups based on their visual acuity based on median split.
#'
#' @format A data frame with 1760 rows and 6 variables:
#' \describe{
#'   \item{\code{nerror}}{[double] number of incorrectly identified letters out of 4}
#'   \item{\code{adaptation}}{[factor] either preadaptation phase (\code{preadaptation}) or adaptation to contracting motion (\code{contracting})}
#'   \item{\code{fontsize}}{[factor] font size, in logMAR, one of \code{-0.3}, \code{-0.2}, \code{-0.1} and \code{0}}
#'   \item{\code{position}}{[factor] position of the letter from left (\code{1}) to right (\code{5})}
#'   \item{\code{id}}{[factor] participant identifier}
#'   \item{\code{acuity}}{[factor] acuity group, either \code{normal} or \code{high}}
#'}
#' @references Lages, M., Boyle, S. C., & Jenkins, R. (2017). \emph{Illusory Increases in Font Size Improve Letter Recognition}. Psychological Science, 28(\bold{8}), 1180–1188. \url{https://doi.org/10.1177/0956797617705391}
#' @examples
#' \dontrun{
#' # Code to reproduce Figure 2a
#' library(dplyr)
#' library(ggplot2)
#' LBJ17_S1A |>
#' group_by(acuity, fontsize, adaptation, id) |>
#'  summarize(ncorrect = 20 - sum(nerror))|>
#'  group_by(acuity, fontsize, adaptation) |>
#'  summarize(mean = mean(ncorrect))|>
#'  ggplot(mapping = aes(y = mean,
#'                       x = as.numeric(fontsize),
#'                       color = adaptation,
#'                       shape = acuity)) +
#'  geom_point() +
#'  geom_line() +
#'  labs(x = "Letter Size (logMAR)",
#'       y = "Number of Letters (Correct)")
#' }
"LBJ17_S1A"


#' @title Liu et al. (2022+) Study 1
#' @description
#' Liu et al. study social interactions and the impact of surprise on people reaching out if this contact is unexpected. Experiment 1 focuses on questionnaires where the experimental condition is the perceived appreciation of reaching out to someone (vs being reached to). The study used a questionnaire administered to 200 American adults recruited on the Prolific Academic platform. The response index consists of the average of four questions measured on a Likert scale ranging from 1 to 7, with higher values indicating higher appreciation.
#'
#' @format A data frame with 200 rows and 5 variables:
#' \describe{
#'   \item{\code{appreciation}}{[double] response variable, average Likert scale for appreciation}
#'   \item{\code{role}}{[factor] experimental factor, either \code{initiator} or \code{responder}}
#'   \item{\code{form}}{[factor] form of communication, one of \code{email}, \code{text}, \code{phone} or \code{other}}
#'   \item{\code{gender}}{[factor] gender, one of \code{male}, \code{female} or \code{other}}
#'   \item{\code{age}}{[double] age of participant}
#'}
#'
#' @references Liu, P. J., Rim, S., Min, L., & Min, K. E. (2022+). \emph{The surprise of reaching out: Appreciated more than we think.} Journal of Personality and Social Psychology.  \url{https://doi.org/10.1037/pspi0000402}
"LRMM22_S1"


#' Elliot et al. (2021), dataset 1
#'
#' @description Data for Table 2 of Elliot et al. (2021), split by replicating lab. The data are counts of verbalization, suitable for a generalized linear mixed model and chi-square test for contingency data.
#'
#' @format A data frame with 204 rows and 4 variables:
#' \describe{
#'   \item{\code{lab}}{[factor] location of laboratory}
#'   \item{\code{age}}{[factor] age group, one of \code{5yo}, \code{6yo}, \code{7yo} or \code{10yo}}
#'   \item{\code{frequency}}{[factor] how often students verbalized during task, one of \code{never}, \code{sometimes} or \code{usually}}
#'   \item{\code{count}}{[integer]count of the number of children}
#'}
#' @references   Elliott, E. M., C. C. Morey, A.M. AuBuchon et al. (2021). \emph{Multilab Direct Replication of Flavell, Beach, and Chinsky (1966): Spontaneous Verbal Rehearsal in a Memory Task as a Function of Age}. Advances in Methods and Practices in Psychological Science. \url{https://doi.org/10.1177/25152459211018187}
"MULTI21_D1"


#'  Elliot et al. (2021), dataset 2
#' @description Data for a linear mixed model and a two-way analysis of variance with \code{taskorder} and \code{timing}.
#'
#' @format A data frame with 2931 rows and 7 variables:
#' \describe{
#'   \item{\code{id}}{[factor] unique participant ID}
#'   \item{\code{lab}}{[factor] location of laboratory}
#'   \item{\code{taskorder}}{[factor] order of task for \code{delayed} vs \code{immediate} recall (see \code{timing}).}
#'   \item{\code{timing}}{[factor] timing of the task for recall, either \code{delayed} or \code{immediate}}
#'   \item{\code{age}}{[factor] age group, one of \code{5yo}, \code{6yo}, \code{7yo} or \code{10yo}}
#'   \item{\code{mcorrect}}{[integer] number of words correctly recalled, from 1 to 5}
#'   \item{\code{frequency}}{[factor] how often students verbalized during task, one of \code{never}, \code{sometimes} or \code{usually}}
#'}
#' @references   Elliott, E. M., C. C. Morey, A.M. AuBuchon et al. (2021). \emph{Multilab Direct Replication of Flavell, Beach, and Chinsky (1966): Spontaneous Verbal Rehearsal in a Memory Task as a Function of Age}. Advances in Methods and Practices in Psychological Science. \url{https://doi.org/10.1177/25152459211018187}
"MULTI21_D2"


#' @title Johnson, Cheung and Donnellan (2014), Study 2
#'
#' @description This dataset is for a replication of a
#'  study of Schnall, Benton, and Harvey (2008),
#'  who hypothesied that cleanliness (washing hands)
#' reduces the severity of moral judgments. The study failed to replicate.
#'
#' @details The vignettes (\code{dog}, \code{trolley}, \code{wallet}, \code{plane}, \code{resume}, \code{kitten}) are measured using a Likert scale ranging from nothing wrong at all (\code{1}) to extremely wrong (\code{7}).
#'
#' @format A data frame with 126 rows and 20 variables:
#' \describe{
#'   \item{\code{condition}}{[factor] experimental condition, either \code{control} or \code{cleanliness}}
#'   \item{\code{mvignette}}{[double] mean of vignettes}
#'   \item{\code{dog}}{[double] Likert scale for the dog vignette}
#'   \item{\code{trolley}}{[double] Likert scale for the trolley vignette}
#'   \item{\code{wallet}}{[double] Likert scale for the wallet vignette}
#'   \item{\code{plane}}{[double] Likert scale for the plane vignette}
#'   \item{\code{resume}}{[double] Likert scale for the resume vignette}
#'   \item{\code{kitten}}{[double] Likert scale for the kitten vignette}
#'   \item{\code{age}}{[integer] age of participant}
#'   \item{\code{gender}}{[factor] gender of participant, either \code{male} or \code{female}}
#'}
#' @references Johnson, D.J., F. Cheung and M.B. Donnellan (2014), \emph{Does Cleanliness Influence Moral Judgments}?, Social Psychology, 45(\bold{3}), 209-215, \url{https://doi.org/10.1027/1864-9335/a000186}
"JCD14_S2"

#' @title Rosen and Jerdee (1974)
#'
#' @description Data are extracted from Table 1. They consist of assessment of bank supervisors on the promotion of hypothetical employees to the task of branch manager. The purpose of the study was to check  discrimination for promotion.
#' @format A data frame with 4 rows and 3 variables:
#' \describe{
#'   \item{\code{gender}}{[factor] gender, either \code{male} or \code{female}}
#'   \item{\code{decision}}{[factor] outcome, either \code{promote} or \code{hold file}}
#'   \item{\code{admin}}{[factor] complexity of job, either \code{simple} or \code{complex}}
#'   \item{\code{count}}{[integer] number of occurences of combination}
#'}
#' @references Rosen, B., and Jerdee, T. H. (1974). \emph{Influence of sex role stereotypes on personnel decisions.} Journal of Applied Psychology, 59(\bold{1}), 9–14. \url{https://doi.org/10.1037/h0035834}
"RJ74"


#' @title Maglio and Polman (2014), Study 2
#'
#' @description Authors measured the subjective distance on travel from one subway station (Bay) and asked the subjective distance to another station, at most two stations away from the location of the experiment. The other factor manipulated was the direction of travel.The data are suitable for a two-way analysis of variance.
#'
#' @format A data frame with 202 rows and 3 variables:
#' \describe{
#'   \item{\code{station}}{[factor] subway station, one of \code{Spadina}, \code{St. George}, \code{Bloor-Yonge} and \code{Sherbourne}}
#'   \item{\code{direction}}{[factor] direction of travel, either \code{east} or \code{west}}
#'   \item{\code{distance}}{[integer] subjective distance, a Likert scale ranging from very close (\code{1}) to very far (\code{7})}
#'}
#' @details The specific question asked to commuters was "How far away does the [name] station feel to you?"
#' @references Maglio, S. J., & Polman, E. (2014). \emph{Spatial orientation shrinks and expands psychological distance.} Psychological Science, 25(\bold{7}), 1345–1352. \url{https://doi.org/10.1177/0956797614530571}
"MP14_S1"

#' @title Bobak, Mileva and Hancock (2019), Study 2
#'
#' @description Data on matching of pairs of pictures from official ID depending on the color.
#' Each of the 52 participants was assigned pictures of celebrities and needed to decide whether pairs of picture (potentially mixed or both monochrome or color) were of the same person.
#' @format A data frame with 156 rows and 5 variables:
#' \describe{
#'   \item{\code{id}}{[integer] participant ID}
#'   \item{\code{gender}}{[factor] gender of participant, either \code{male} or \code{female}}
#'   \item{\code{age}}{[integer] age of participant}
#'   \item{\code{color}}{[factor] color of photographs, either grayscale (\code{mon}), colored (\code{col}) or mixed (\code{mix})}
#'   \item{\code{pcorr}}{[double] percentage of correctly detected match}
#'}
#' @references Bobak, A. K., Mileva, V. R., & Hancock, P. J. B. (2019). \emph{A grey area: How does image hue affect unfamiliar face matching?} Cognitive Research: Principles and Implications, 4(\bold{1}), 27. \url{https://doi.org/10.1186/s41235-019-0174-3}
"BMH19_S2"


#' @title Curley et al. (2022)
#'
#' @description This study aimed at finding the impact of having multiple options for jurors as is the case in Scotland (guilty, not guilty, not proven), relative to the usual setting of guilty or not guilty verdict.
#'
#' The response was measured using the sum of the scores for 11 ratings (rounds) on a Likert scale ranging from 0 (no evidence of guilt) to 14 (guilty).
#' @format A data frame with 256 rows and 6 variables:
#' \describe{
#'   \item{\code{id}}{[factor] participant identifier}
#'   \item{\code{anchor}}{[factor] order of evidence, (\code{strong-first} versus \code{weak-first})}
#'   \item{\code{vignette}}{[factor] homocide vignette}
#'   \item{\code{verdictsyst}}{[factor] verdict system, either \code{two} or \code{three} possible outcomes.}
#'   \item{\code{guilt}}{[double] final belief of guilt score, with lower values representing no belief of guilt}
#'   \item{\code{pjaq}}{[integer] PJAQ score, a 29-item questionnaire, which measures total pre-trial bias}
#'}
#' @references Lee J. Curley, Jennifer Murray, Rory MacLean, James Munro, Martin Lages, Lara A. Frumkin, Phyllis Laybourn & David Brown (2022) \emph{Verdict spotting: investigating the effects of juror bias, evidence anchors and verdict system in jurors}, Psychiatry, Psychology and Law, 29(\bold{3}), 323-344, \url{https://doi.org/10.1080/13218719.2021.1904450}
"C22"


# evidence anchor (strong-first versus
#                  weak-first); (b) verdict system (two- versus
#                                                   three-verdict systems). Total pre-trial bias
# score was used as a covariate in the analysis
# (this score is based on the PJAQ and is
#   explained further in the Materials section)
