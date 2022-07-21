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
#' Liu et al. study social interactions and the impact of surprise on people reaching out if this contact is unexpected. Experiment 1 focuses on questionnaires where the experimental condition is the perceived appreciation of reaching out to someone (vs being reached to). The study used a questionnaire administered to 200 American adults recruited on the Prolific Academic platform. The response index consists of the average of four questions measured on a Likert scale ranging from 1 (not at all) to 7 (to a great extent): higher values thus indicate higher appreciation.
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

#' @title Chandler (2016) replication
#' @description Replication by Chandler (2016) of Study 4a of Janiszewski and Uy (2008). Both studies measured the amount of adjustment when presented with vague or precise range of value for objects, with potential encouragement for adjusting more the value.
#' @format A data frame with 120 rows and 4 variables:
#' \describe{
#'   \item{\code{anchor}}{[factor] anchor, either \code{round} or \code{precise}}
#'   \item{\code{magnitude}}{[factor] magnitude of anchor, 0 or 1}
#'   \item{\code{gender}}{[factor] participant gender, either \code{female}, \code{male} or \code{other}}
#'   \item{\code{madjust}}{[double] mean adjustement}
#'}
#' @references Chandler, J. J. (2016). \emph{Replication of Janiszewski & Uy (2008, Psychological Science, study 4b)}. OSF. \url{https://osf.io/aaudl}
#' @references Janiszewski, C., & Uy, D. (2008). \emph{Precision of the anchor influences the amount of adjustment}. Psychological Science, 19(\bold{2}), 121–127. \url{https://doi.org/10.1111/j.1467-9280.2008.02057.x}
"C16"

#' @title van Stekelenburg et al. (2021), Study 2
#' @description The study aimed to assess changes in opinion of skeptics when faced with evidence of scientific consensus through manipulation of experimental condition explaining how to assess a news claim. The subject in question was Genetically Engineered Food (GEE).
#' @format A data frame with 442 rows and 3 variables:
#' \describe{
#'   \item{\code{prior}}{[integer] negative of prior belief score}
#'   \item{\code{post}}{[integer] post experiment score for veracity of claim}
#'   \item{\code{condition}}{[factor] experimental condition, one of \code{Boost}, \code{BoostPlus} and \code{concensus}}
#'}
#' @references Stekelenburg, A. van, Schaap, G., Veling, H., & Buijzen, M. (2021). \emph{Boosting understanding and identification of scientific consensus can help to correct false beliefs.} Psychological Science, 32(\bold{10}), 1549–1565. \url{https://doi.org/10.1177/09567976211007788}
"SSVB21_S2"

#' @title van Stekelenburg et al. (2021), Study 3
#' @description A replication of the Study 2, but with a control group and a larger sample size. The study aimed to assess changes in opinion of skeptics when faced with evidence of scientific consensus through manipulation of experimental condition explaining how to assess a news claim. The subject in question was Genetically Engineered Food (GEE).
#' @format A data frame with 854 rows and 4 variables:
#' \describe{
#'   \item{\code{prior}}{[integer] negative of prior belief score}
#'   \item{\code{post}}{[integer] post experiment score for veracity of claim}
#'   \item{\code{condition}}{[factor] experimental condition, one of \code{BoostPlus}, \code{concensus} and \code{control}}
#'   \item{\code{mention_consensus}}{[factor] indication of whether the participant mentioned scientific consensus, either \code{yes} or \code{no}}
#'}
#' @references Stekelenburg, A. van, Schaap, G., Veling, H., & Buijzen, M. (2021). \emph{Boosting understanding and identification of scientific consensus can help to correct false beliefs.} Psychological Science, 32(\bold{10}), 1549–1565. \url{https://doi.org/10.1177/09567976211007788}
"SSVB21_S3"

#' @title Roczniewska and Higgins (2019), Study 1
#'
#' @description Study of mediator following changes in the Polish education system, whereby middle school was due to disappear and be replaced with a new system with 8 years of elementary school and four years of high school. The authors surveyed teachers in middle and primary schools with two messages, either prevention or promotion.
#'
#' @format A data frame with 198 rows and 12 variables:
#' \describe{
#'   \item{\code{change}}{[factor] change outcome depending on school type, either middle school (\code{negative}) or primary school (\code{positive})}
#'   \item{\code{regfocus}}{[factor] situational regulatory focus manipulation: education change message framing, either \code{prevention} or \code{promotion} message framing}
#'   \item{\code{fluency}}{[double] mean for fluency items}
#'   \item{\code{engagement}}{[double] mean for engagement items}
#'   \item{\code{dprocessjustice}}{[double] mean for change process fairness perceptions items}
#'   \item{\code{dopenness}}{[double] mean for change openness items}
#'   \item{\code{promem}}{[double] mean for work regulatory focus promotion items}
#'   \item{\code{prevem}}{[double] mean for work regulatory focus prevention items}
#'   \item{\code{gender}}{[factor] gender of teacher, either \code{man} or \code{woman}}
#'   \item{\code{age}}{[integer] age of teacher}
#'   \item{\code{tenure}}{[integer] number of years teaching}
#'   \item{\code{hours_week}}{[integer] weekly number of hours working}
#'}
#' @references M. Roczniewska and Higgins, E.T. (2019). \emph{Messaging organizational change: How regulatory fit relates to openness to change through fairness perceptions}, Journal of Experimental Social Psychology, 85, \url{https://doi.org/10.1016/j.jesp.2019.103882}
"RH19_S1"


#' Anandarajan, Viger and Curatola (2002)
#'
#' A study on the impact of communication means on perceived risk of organization on the brink of bankrupcy vehiculated through different disclosure format.
#' @format A data frame with 132 rows and 4 variables:
#' \describe{
#'   \item{\code{format}}{[factor] disclosure format, one of \code{integrated note}, \code{stand-alone note} or \code{modified auditor report}}
#'   \item{\code{prime}}{[double] rating for the interest rate premium assessed}
#'   \item{\code{debt}}{[integer] rating for the ability to service debt}
#'   \item{\code{profitability}}{[integer] rating for the ability to improve profitability}
#'}
#' @details This data was simulated based on the summary statistics presented in the paper
#' @source Leo Belzile
#' @references Anandarajan, A., Viger, C., & Curatola, A. P. (2002). \emph{An experimental investigation of alternative going-concern reporting formats: A Canadian experience.} Canadian Accounting Perspectives, 1(\bold{2}), 141-162. \url{https://doi.org/10.1506/5947-NQTC-C3Y5-H46N}
"AVC02"

#' @title Lee and Choi (2019), Study 1
#' @description A study on online descriptors and the impact on the perception of a product on the discrepancy between the text description and the image(e.g., a set of 6 toothbrushes when the image shows a single one), with two experimental conditions. The authors also measured the prior familiarity with the brand of the item.
#'
#' @format A data frame with 96 rows and 5 variables:
#' \describe{
#'   \item{\code{prodeval}}{[double] average product evaluation score of three 9 point scales, with very bad to very good, very unfavorable to very favorable and not a useful product to very useful product}
#'   \item{\code{familiarity}}{[integer] Likert scale from 1 to 7 for brand familiarity}
#'   \item{\code{consistency}}{[factor] image-text groups, either \code{consistent} or \code{inconsistent}}
#'   \item{\code{gender}}{[factor] gender of participant}
#'   \item{\code{age}}{[integer] age of participant}
#'}
#' @details Distributed under CC-BY 4.0 license
#' @references K. Lee and J. Choi (2019). \emph{Image-text inconsistency effect on product evaluation in online retailing}, Journal of Retailing and Consumer Services, 49, 279-288, \url{https://doi.org/10.1016/j.jretconser.2019.03.015}
"LC19_S1"

#' @title Lee and Choi (2019), Study 2
#'
#' @description A follow-up of Study 1 aiming to measure the mediating effect of the fluency of the advertisement on product evaluation, depending on the (in)consistency between description and display on product evaluation
#' @format A data frame with 113 rows and 6 variables:
#' \describe{
#'   \item{\code{prodeval}}{[double] average product evaluation score of three 9 point scales, with very bad to very good, very unfavorable to very favorable and not a useful product to very useful product}
#'   \item{\code{fluency}}{[double] average fluency measuring easy of reading and of understanding, ranging from strongly disagree (\code{1}) to strongly agree (\code{2})}
#'   \item{\code{familiarity}}{[integer] Likert scale from 1 to 7 for brand familiarity}
#'   \item{\code{consistency}}{[factor] image-text groups, either \code{consistent} or \code{inconsistent}}
#'   \item{\code{gender}}{[factor] gender of participant}
#'   \item{\code{age}}{[integer] age of participant}
#' }
#' @details Distributed under CC-BY 4.0 license
#' @references K. Lee and J. Choi (2019). \emph{Image-text inconsistency effect on product evaluation in online retailing}, Journal of Retailing and Consumer Services, 49, 279-288, \url{https://doi.org/10.1016/j.jretconser.2019.03.015}
"LC19_S2"

#' @title Lee and Choi (2019), Table 2
#' @description Contingency table for Study 3, measuring the expected number of products as a function of the text description and image showing either one or six toothbrushes.
#' @format A data frame with 12 rows and 4 variables:
#' \describe{
#'   \item{\code{text}}{[factor] number of toothbrush in text description}
#'   \item{\code{image}}{[factor] number of toothbrushes displayed in image}
#'   \item{\code{expected}}{[factor] expected number of toothbrushes}
#'   \item{\code{count}}{[integer] count of occurence}
#'}
#' @details Distributed under CC-BY 4.0 license
#' @references K. Lee and J. Choi (2019). \emph{Image-text inconsistency effect on product evaluation in online retailing}, Journal of Retailing and Consumer Services, 49, 279-288, \url{https://doi.org/10.1016/j.jretconser.2019.03.015}
"LC19_T2"


#' @title Amirabdolahian and Ali-Adeeb (2021)
#' @description A study on the attitude towards real and computer generated image of people smiling. The response is the
#' @format A data frame with 1169 rows and 3 variables:
#' \describe{
#'   \item{\code{amplitude}}{[double] amplitude of  N170 EEG signal}
#'   \item{\code{stimulus}}{[factor] image shown, one of real image (\code{R}), a one-pass generative adversarial network generate image with slightly happy face (\code{GAN1}) and a two-pass GAN with an extremely happy person (\code{GAN2})}
#'   \item{\code{id}}{[factor] participant identifier}
#'}
#' @details The data were collected as part of a course project during Winter 2021 (TECH 80747A Information Technologies and Neuroscience), which took place during the Covid19 pandemic. Each student participant had his own apparatus, which explains the large between-participant measurement error.
#' @source Saeed Amirabdolahian
#' @references S. Amirabdolahian and R. Ali-Adeeb (2021). \emph{Measuring face images visual fidelity in neurophysiological level: a study on facial expression manipulating technologies}, technical report, HEC Montreal.
"AA21"

#' @title van Stekelenburg et al. (2021), Study 2
#' @description The study aimed to assess changes in opinion of skeptics when faced with evidence of scientific consensus through manipulation of experimental condition explaining how to assess a news claim. The subject in question was Genetically Engineered Food (GEE).
#' @format A data frame with 442 rows and 3 variables:
#' \describe{
#'   \item{\code{prior}}{[integer] negative of prior belief score}
#'   \item{\code{post}}{[integer] post experiment score for veracity of claim}
#'   \item{\code{condition}}{[factor] experimental condition, one of \code{Boost}, \code{BoostPlus} and \code{concensus}}
#'}
#' @references Stekelenburg, A. van, Schaap, G., Veling, H., & Buijzen, M. (2021). \emph{Boosting understanding and identification of scientific consensus can help to correct false beliefs.} Psychological Science, 32(\bold{10}), 1549–1565. \url{https://doi.org/10.1177/09567976211007788}
"SSVB21_S2"

#' @title van Stekelenburg et al. (2021), Study 3
#' @description A replication of the Study 2, but with a control group and a larger sample size. The study aimed to assess changes in opinion of skeptics when faced with evidence of scientific consensus through manipulation of experimental condition explaining how to assess a news claim. The subject in question was Genetically Engineered Food (GEE).
#' @format A data frame with 854 rows and 4 variables:
#' \describe{
#'   \item{\code{prior}}{[integer] negative of prior belief score}
#'   \item{\code{post}}{[integer] post experiment score for veracity of claim}
#'   \item{\code{condition}}{[factor] experimental condition, one of \code{BoostPlus}, \code{concensus} and \code{control}}
#'   \item{\code{mention_consensus}}{[factor] indication of whether the participant mentioned scientific consensus, either \code{yes} or \code{no}}
#'}
#' @references Stekelenburg, A. van, Schaap, G., Veling, H., & Buijzen, M. (2021). \emph{Boosting understanding and identification of scientific consensus can help to correct false beliefs.} Psychological Science, 32(\bold{10}), 1549–1565. \url{https://doi.org/10.1177/09567976211007788}
"SSVB21_S3"

#' @title Roczniewska and Higgins (2019), Study 1
#'
#' @description Study of mediator following changes in the Polish education system, whereby middle school was due to disappear and be replaced with a new system with 8 years of elementary school and four years of high school. The authors surveyed teachers in middle and primary schools with two messages, either prevention or promotion.
#'
#' @format A data frame with 198 rows and 12 variables:
#' \describe{
#'   \item{\code{change}}{[factor] change outcome depending on school type, either middle school (\code{negative}) or primary school (\code{positive})}
#'   \item{\code{regfocus}}{[factor] situational regulatory focus manipulation: education change message framing, either \code{prevention} or \code{promotion} message framing}
#'   \item{\code{fluency}}{[double] mean for fluency items}
#'   \item{\code{engagement}}{[double] mean for engagement items}
#'   \item{\code{dprocessjustice}}{[double] mean for change process fairness perceptions items}
#'   \item{\code{dopenness}}{[double] mean for change openness items}
#'   \item{\code{promem}}{[double] mean for work regulatory focus promotion items}
#'   \item{\code{prevem}}{[double] mean for work regulatory focus prevention items}
#'   \item{\code{gender}}{[factor] gender of teacher, either \code{male} or \code{female}}
#'   \item{\code{age}}{[integer] age of teacher}
#'   \item{\code{tenure}}{[integer] number of years teaching}
#'   \item{\code{hours_week}}{[integer] weekly number of hours working}
#'}
#' @references M. Roczniewska and Higgins, E.T. (2019). \emph{Messaging organizational change: How regulatory fit relates to openness to change through fairness perceptions}, Journal of Experimental Social Psychology, 85, \url{https://doi.org/10.1016/j.jesp.2019.103882}
"RH19_S1"


#' Anandarajan, Viger and Curatola (2002)
#'
#' A study on the impact of communication means on perceived risk of organization on the brink of bankrupcy vehiculated through different disclosure format.
#' @format A data frame with 132 rows and 4 variables:
#' \describe{
#'   \item{\code{format}}{[factor] disclosure format, one of \code{integrated note}, \code{stand-alone note} or \code{modified auditor report}}
#'   \item{\code{prime}}{[double] rating for the interest rate premium assessed}
#'   \item{\code{debt}}{[integer] rating for the ability to service debt}
#'   \item{\code{profitability}}{[integer] rating for the ability to improve profitability}
#'}
#' @details This data was simulated based on the summary statistics presented in the paper
#' @source Leo Belzile
#' @references Anandarajan, A., Viger, C., & Curatola, A. P. (2002). \emph{An experimental investigation of alternative going-concern reporting formats: A Canadian experience.} Canadian Accounting Perspectives, 1(\bold{2}), 141-162. \url{https://doi.org/10.1506/5947-NQTC-C3Y5-H46N}
"AVC02"

#' @title Lee and Choi (2019), Study 1
#' @description A study on online descriptors and the impact on the perception of a product on the discrepancy between the text description and the image(e.g., a set of 6 toothbrushes when the image shows a single one), with two experimental conditions. The authors also measured the prior familiarity with the brand of the item.
#'
#' @format A data frame with 96 rows and 5 variables:
#' \describe{
#'   \item{\code{prodeval}}{[double] average product evaluation score of three 9 point scales, with very bad to very good, very unfavorable to very favorable and not a useful product to very useful product}
#'   \item{\code{familiarity}}{[integer] Likert scale from 1 to 7 for brand familiarity}
#'   \item{\code{consistency}}{[factor] image-text groups, either \code{consistent} or \code{inconsistent}}
#'   \item{\code{gender}}{[factor] gender of participant, either \code{male} or \code{female}}
#'   \item{\code{age}}{[integer] age of participant}
#'}
#' @details Distributed under CC-BY 4.0 license
#' @references K. Lee and J. Choi (2019). \emph{Image-text inconsistency effect on product evaluation in online retailing}, Journal of Retailing and Consumer Services, 49, 279-288, \url{https://doi.org/10.1016/j.jretconser.2019.03.015}
"LC19_S1"

#' @title Lee and Choi (2019), Study 2
#'
#' @description A follow-up of Study 1 aiming to measure the mediating effect of the fluency of the advertisement on product evaluation, depending on the (in)consistency between description and display on product evaluation
#' @format A data frame with 113 rows and 6 variables:
#' \describe{
#'   \item{\code{prodeval}}{[double] average product evaluation score of three 9 point scales, with very bad to very good, very unfavorable to very favorable and not a useful product to very useful product}
#'   \item{\code{fluency}}{[double] average fluency measuring easy of reading and of understanding, ranging from strongly disagree (\code{1}) to strongly agree (\code{2})}
#'   \item{\code{familiarity}}{[integer] Likert scale from 1 to 7 for brand familiarity}
#'   \item{\code{consistency}}{[factor] image-text groups, either \code{consistent} or \code{inconsistent}}
#'   \item{\code{gender}}{[factor] gender of participant, either \code{male} or \code{female}}
#'   \item{\code{age}}{[integer] age of participant}
#' }
#' @details Distributed under CC-BY 4.0 license
#' @references K. Lee and J. Choi (2019). \emph{Image-text inconsistency effect on product evaluation in online retailing}, Journal of Retailing and Consumer Services, 49, 279-288, \url{https://doi.org/10.1016/j.jretconser.2019.03.015}
"LC19_S2"

#' @title Lee and Choi (2019), Table 2
#' @description Contingency table for Study 3, measuring the expected number of products as a function of the text description and image showing either one or six toothbrushes.
#' @format A data frame with 12 rows and 4 variables:
#' \describe{
#'   \item{\code{text}}{[factor] number of toothbrush in text description}
#'   \item{\code{image}}{[factor] number of toothbrushes displayed in image}
#'   \item{\code{expected}}{[factor] expected number of toothbrushes}
#'   \item{\code{count}}{[integer] count of occurence}
#'}
#' @details Distributed under CC-BY 4.0 license
#' @references K. Lee and J. Choi (2019). \emph{Image-text inconsistency effect on product evaluation in online retailing}, Journal of Retailing and Consumer Services, 49, 279-288, \url{https://doi.org/10.1016/j.jretconser.2019.03.015}
"LC19_T2"


#' @title Amirabdolahian and Ali-Adeeb (2021)
#' @description A study on the attitude towards real and computer generated image of people smiling. The response is the
#' @format A data frame with 1169 rows and 3 variables:
#' \describe{
#'   \item{\code{amplitude}}{[double] amplitude of  N170 EEG signal}
#'   \item{\code{stimulus}}{[factor] image shown, one of real image (\code{R}), a one-pass generative adversarial network generate image with slightly happy face (\code{GAN1}) and a two-pass GAN with an extremely happy person (\code{GAN2})}
#'   \item{\code{id}}{[factor] participant identifier}
#'}
#' @details The data were collected as part of a course project during Winter 2021 (TECH 80747A Information Technologies and Neuroscience), which took place during the Covid19 pandemic. Each student participant had his own apparatus, which explains the large between-participant measurement error.
#' @source Saeed Amirabdolahian
#' @references S. Amirabdolahian and R. Ali-Adeeb (2021). \emph{Measuring face images visual fidelity in neurophysiological level: a study on facial expression manipulating technologies}, technical report, HEC Montreal.
"AA21"

#' @title Liu et al. (2021), Study 3
#'
#' @description Paired data from dyads: participants were asked to "name a fellow college student in their social circle with whom they typically have pleasant encounters but have not interacted (either virtually or in-person)". The experimenter measured the appreciation score via a Likert scale with not at all (\code{1}), slightly (\code{2}), moderately (\code{3}), very \code{4} and extremely (\code{5}). The expectation of the authors was that initiators sending the gift/message would underestimate how much this attention would be valued by respondant
#' @format A data frame with 67 rows and 6 variables:
#' \describe{
#'   \item{\code{apprec_resp}}{[integer] appreciation of respondant}
#'   \item{\code{apprec_init}}{[integer] appreciation of initiator}
#'   \item{\code{age_resp}}{[double] age of respondant}
#'   \item{\code{gender_resp}}{[factor] gender of respondant, one of \code{male}, \code{female} or \code{other}}
#'   \item{\code{age_init}}{[double] age of initiator}
#'   \item{\code{gender_init}}{[factor] gender of initiator, one of \code{male}, \code{female} or \code{other}}
#'}
#' @references Liu, P. J., Rim, S., Min, L., & Min, K. E. (2022+). \emph{The surprise of reaching out: Appreciated more than we think.} Journal of Personality and Social Psychology.  \url{https://doi.org/10.1037/pspi0000402}
"LRMM22_S3"

#' @title Liu et al. (2019), Study 5b
#' @description The authors postulated that the
#' underestimation of the appreciation of initiators relative to recipients
#' was mediated by the degree of surprise of the recipient.
#'
#' @format A data frame with 402 rows and 5 variables:
#' \describe{
#'   \item{\code{appreciation}}{[double] average score questions related to appreciation (appreciate, feel thankful, feel grateful, feel pleased)}
#'   \item{\code{surprise}}{[double] average score for questions related to unexpectedness and surprise of reaching out}
#'   \item{\code{condition}}{[factor] experimental condition, either \code{self} or \code{other}}
#'   \item{\code{age}}{[double] age of participant}
#'   \item{\code{gender}}{[factor] gender of participant, one of \code{male}, \code{female} or \code{other}}
#'}
#' @references Liu, P. J., Rim, S., Min, L., & Min, K. E. (2022+). \emph{The surprise of reaching out: Appreciated more than we think.} Journal of Personality and Social Psychology.  \url{https://doi.org/10.1037/pspi0000402}
"LRMM22_S5b"

#' @title ManyLab2 replication of Risen and Gilovich (2008)
#' @description The data is a replication with undergraduate students of a study. The authors measured the likelihood of bad outcome when tempting fate by not preparing in advance for a task. The replication data are unbalanced and the study failed to replicate
#' @format A data frame with 4433 rows and 4 variables:
#' \describe{
#'   \item{\code{lab}}{[factor] laboratory identifier}
#'   \item{\code{likelihood}}{[integer] likelihood of bad outcome, from 1 to 10}
#'   \item{\code{gender}}{[factor] gender of participant, either \code{male} or \code{female}}
#'   \item{\code{condition}}{[factor] experimental condition, either \code{prepared} or \code{unprepared}}
#'}
#' @references Klein, R. A., et al. (2018). \emph{Many labs 2: Investigating variation in replicability across samples and settings.} Advances in Methods and Practices in Psychological Science, 1(\bold{4}), 443–490. \url{https://doi.org/10.1177/2515245918810225}
#' Risen, J. L., and T. Gilovich, (2008). \emph{Why people are reluctant to tempt fate.} Journal of Personality and Social Psychology, 95(\bold{2}), 293–307. \url{https://doi.org/10.1037/0022-3514.95.2.293}
#' @details Data extracted from \url{https://osf.io/sg3su}
"MANY18_S18"



# @references Brucks, M.S. and J. Levav (2022)\emph{Virtual communication curbs creative idea generation}. Nature 605, 108–112. \url{https://doi.org/10.1038/s41586-022-04643-y}
# "BL22"
