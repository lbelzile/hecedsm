
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
#' @source Open Science Foundation, via \url{https://osf.io/9k3sw/}, unspecified license
"BJF14_S1"

#' @title Baumann, Seifert-Kessell and Jones (1992)
#' @description Experimental study on the effectiveness of different reading strategies on understanding of children.
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
#' @source Obtained from `carData` package (`Baumann`)
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
#' @source Harvard Dataverse, \url{https://doi.org/10.7910/DVN/JGGUZE}, licensed under CC0 1.0
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
#' @references Grossmann, I., & Kross, E. (2014). \emph{Exploring Solomon’s Paradox: Self-Distancing Eliminates the Self-Other Asymmetry in Wise Reasoning About Close Relationships in Younger and Older Adults.} Psychological Science, 25(\bold{8}), 1571–1580. \url{https://doi.org/10.1177/0956797614535400}
#' @source Open Science Foundation, \url{https://osf.io/7xs93}, unspecified license
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
#' @source Open Science Foundation, \url{https://osf.io/nav9h/}, unspecified license
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
#' @source Research Box 289, \url{https://researchbox.org/289}, distributed under a CC BY 4.0 license
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
#'   \item{\code{count}}{[integer] count of the number of children}
#'}
#' @references   Elliott, E. M., C. C. Morey, A.M. AuBuchon et al. (2021). \emph{Multilab Direct Replication of Flavell, Beach, and Chinsky (1966): Spontaneous Verbal Rehearsal in a Memory Task as a Function of Age}. Advances in Methods and Practices in Psychological Science. \url{https://doi.org/10.1177/25152459211018187}
#' @source Open Science Foundation, \url{https://osf.io/vgxkf}, licensed under CC-BY Attribution 4.0 International
"MULTI21_D1"


#'  Elliot et al. (2021), dataset 2
#' @description Data for a linear mixed model and a two-way analysis of variance with \code{taskorder} and \code{timing}.
#'
#' @format A data frame with 2931 rows and 7 variables:
#' \describe{
#'   \item{\code{id}}{[factor] unique participant ID}
#'   \item{\code{lab}}{[factor] location of laboratory}
#'   \item{\code{taskorder}}{[factor] order of task for \code{delayed} vs \code{immediate} recall (see \code{timing}).}
#'   \item{\code{timing}}{[factor] timing of the task for recall, either \code{delayed} or \code{immediate} or \code{point-and-name}}
#'   \item{\code{age}}{[factor] age group, one of \code{5yo}, \code{6yo}, \code{7yo} or \code{10yo}}
#'   \item{\code{mcorrect}}{[integer] number of words correctly recalled, from 1 to 5}
#'   \item{\code{frequency}}{[factor] how often students verbalized during task, one of \code{never}, \code{sometimes} or \code{usually}}
#'}
#' @references   Elliott, E. M., C. C. Morey, A.M. AuBuchon et al. (2021). \emph{Multilab Direct Replication of Flavell, Beach, and Chinsky (1966): Spontaneous Verbal Rehearsal in a Memory Task as a Function of Age}. Advances in Methods and Practices in Psychological Science. \url{https://doi.org/10.1177/25152459211018187}
#' @source Open Science Foundation, \url{https://osf.io/vgxkf}, licensed under CC-BY Attribution 4.0 International
"MULTI21_D2"



#' Flavell, Beach and Chinsky (1966), Table 1
#'
#' @description Three by three contingency table for the data presented in Table 1 of Flavell, Beach and Chinsky (2021), in long format. The authors recruited 20 students per grade.
#'
#' @format A data frame with 9 rows and 3 variables:
#' \describe{
#'   \item{\code{grade}}{[factor] grade of student, one of kindergarden (\code{K}), second (\code{2}) or fifth (\code{5}) grade}
#'   \item{\code{frequency}}{[factor] category indicating how often students verbalized during task, one of \code{0}, \code{1-2} or \code{3+}}
#'   \item{\code{count}}{[integer] count of the number of student}
#'}
#' @references Flavell, J. H., Beach, D. R., & Chinsky, J. M. (1966). Spontaneous verbal rehearsal in a memory task as a function of age. \emph{Child Development}, 37, 283-299. \url{https://doi.org/10.2307/1126804}
#' @examples 
#' chisq.test(xtabs(count ~ grade + frequency, data = FBC66_T1))
#' 
"FBC66_T1"

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
#' @source Open Science Foundation, \url{https://osf.io/zwrxc}, unspecified license
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
#' @description Authors measured the subjective distance on travel from one subway station (Bay) and asked the subjective distance to another station, at most two stations away from the location of the experiment. The other factor manipulated was the direction of travel. The data are suitable for a two-way analysis of variance.
#'
#' @format A data frame with 202 rows and 3 variables:
#' \describe{
#'   \item{\code{station}}{[factor] subway station, one of \code{Spadina}, \code{St. George}, \code{Bloor-Yonge} and \code{Sherbourne}}
#'   \item{\code{direction}}{[factor] direction of travel, either \code{east} or \code{west}}
#'   \item{\code{distance}}{[integer] subjective distance, a Likert scale ranging from very close (\code{1}) to very far (\code{7})}
#'}
#' @details The specific question asked to commuters was "How far away does the [name] station feel to you?"
#' @references Maglio, S. J., & Polman, E. (2014). \emph{Spatial orientation shrinks and expands psychological distance.} Psychological Science, 25(\bold{7}), 1345–1352. \url{https://doi.org/10.1177/0956797614530571}
#' @source Open Science Foundation, \url{https://osf.io/7rajd/}, unspecified license
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
#' @source Supplementary material, article licensed under CC BY 4.0
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
#' @source Open Science Foundation, \url{https://osf.io/zg9hw/}, unspecified license
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
#' @source Open Science Foundation,  \url{https://osf.io/aaudl}, licensed under CC0 1.0 Universal
"C16"


#' @title van Stekelenburg et al. (2021), Study 2
#' @description The study aimed to assess changes in opinion of skeptics when faced with evidence of scientific consensus through manipulation of experimental condition explaining how to assess a news claim. The subject in question was Genetically Engineered Food (GEF).
#' @format A data frame with 442 rows and 3 variables:
#' \describe{
#'   \item{\code{prior}}{[integer] negative of prior belief score}
#'   \item{\code{post}}{[integer] post experiment score for veracity of claim}
#'   \item{\code{condition}}{[factor] experimental condition, one of \code{Boost}, \code{BoostPlus} and \code{consensus}}
#'}
#' @references Stekelenburg, A. van, Schaap, G., Veling, H., & Buijzen, M. (2021). \emph{Boosting understanding and identification of scientific consensus can help to correct false beliefs.} Psychological Science, 32(\bold{10}), 1549–1565. \url{https://doi.org/10.1177/09567976211007788}
#' @source Open Science Foundation, \url{https://osf.io/hua8v/}, licensed under CC-BY Attribution 4.0 International
"SSVB21_S2"

#' @title van Stekelenburg et al. (2021), Study 3
#' @description A replication of the Study 2, but with a control group and a larger sample size. The study aimed to assess changes in opinion of skeptics when faced with evidence of scientific consensus through manipulation of experimental condition explaining how to assess a news claim. The subject in question was Genetically Engineered Food (GEE).
#' @format A data frame with 854 rows and 4 variables:
#' \describe{
#'   \item{\code{prior}}{[integer] negative of prior belief score}
#'   \item{\code{post}}{[integer] post experiment score for veracity of claim}
#'   \item{\code{condition}}{[factor] experimental condition, one of \code{BoostPlus}, \code{concensus} and \code{control}}
#'   \item{\code{nconsensus}}{[integer] number of mentions of scientific consensus by the participant (zero indicates no mention)}
#'   \item{\code{trust}}{[integer] score for the trust in scientists}
#'}
#' @references Stekelenburg, A. van, Schaap, G., Veling, H., & Buijzen, M. (2021). \emph{Boosting understanding and identification of scientific consensus can help to correct false beliefs.} Psychological Science, 32(\bold{10}), 1549–1565. \url{https://doi.org/10.1177/09567976211007788}
#' @source Open Science Foundation, \url{https://osf.io/hua8v/}, licensed under CC-BY Attribution 4.0 International
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
#'   \item{\code{fairness}}{[double] mean for change process fairness perceptions items}
#'   \item{\code{dopenness}}{[double] mean for change openness items}
#'   \item{\code{promem}}{[double] mean for work regulatory focus promotion items}
#'   \item{\code{prevem}}{[double] mean for work regulatory focus prevention items}
#'   \item{\code{gender}}{[factor] gender of teacher, either \code{man} or \code{woman}}
#'   \item{\code{age}}{[integer] age of teacher}
#'   \item{\code{tenure}}{[integer] number of years teaching}
#'   \item{\code{hours_week}}{[integer] weekly number of hours working}
#'}
#' @references M. Roczniewska and Higgins, E.T. (2019). \emph{Messaging organizational change: How regulatory fit relates to openness to change through fairness perceptions}, Journal of Experimental Social Psychology, 85, \url{https://doi.org/10.1016/j.jesp.2019.103882}
#' @source Open Science Foundation, \url{https://osf.io/vrazp/}, unspecified license
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
#' @description A study on online descriptors and the impact on the perception of a product on the discrepancy between the text description and the image (e.g., a set of 6 toothbrushes when the image shows a single one), with two experimental conditions. The authors also measured the prior familiarity with the brand of the item.
#'
#' @format A data frame with 96 rows and 5 variables:
#' \describe{
#'   \item{\code{prodeval}}{[double] average product evaluation score of three 9 point scales, with very bad to very good, very unfavorable to very favorable and not a useful product to very useful product}
#'   \item{\code{familiarity}}{[integer] Likert scale from 1 to 7 for brand familiarity}
#'   \item{\code{consistency}}{[factor] image-text groups, either \code{consistent} or \code{inconsistent}}
#'   \item{\code{gender}}{[factor] gender of participant}
#'   \item{\code{age}}{[integer] age of participant}
#'}
#' @references K. Lee and J. Choi (2019). \emph{Image-text inconsistency effect on product evaluation in online retailing}, Journal of Retailing and Consumer Services, 49, 279-288, \url{https://doi.org/10.1016/j.jretconser.2019.03.015}
#' @source Mendeley, \url{https://doi.org/10.17632/r9t7hh7cy3.1}, licensed under CC BY 4.0
"LC19_S1"

#' @title Lee and Choi (2019), Study 2
#'
#' @description A follow-up of Study 1 aiming to measure the mediating effect of the fluency of the advertisement on product evaluation, depending on the (in)consistency between description and display on product evaluation
#' @format A data frame with 113 rows and 6 variables:
#' \describe{
#'   \item{\code{prodeval}}{[double] average product evaluation score of three 9 point scales, with very bad to very good, very unfavorable to very favorable and not a useful product to very useful product}
#'   \item{\code{fluency}}{[double] average fluency measuring easy of reading and of understanding, ranging from strongly disagree (\code{1}) to strongly agree (\code{7})}
#'   \item{\code{familiarity}}{[integer] Likert scale from 1 to 7 for brand familiarity}
#'   \item{\code{consistency}}{[factor] image-text groups, either \code{consistent} or \code{inconsistent}}
#'   \item{\code{gender}}{[factor] gender of participant}
#'   \item{\code{age}}{[integer] age of participant}
#' }
#' @references K. Lee and J. Choi (2019). \emph{Image-text inconsistency effect on product evaluation in online retailing}, Journal of Retailing and Consumer Services, 49, 279-288, \url{https://doi.org/10.1016/j.jretconser.2019.03.015}
#' @source Mendeley, \url{https://doi.org/10.17632/r9t7hh7cy3.1}, licensed under CC BY 4.0
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
#' @references K. Lee and J. Choi (2019). \emph{Image-text inconsistency effect on product evaluation in online retailing}, Journal of Retailing and Consumer Services, 49, 279-288, \url{https://doi.org/10.1016/j.jretconser.2019.03.015}
#' @source Mendeley, \url{https://doi.org/10.17632/r9t7hh7cy3.1}, licensed under CC BY 4.0
"LC19_T2"


#' @title Amirabdolahian and Ali-Adeeb (2021)
#' @description A study on the attitude towards real and computer generated image of people smiling. The response is the latency for a particular electrode located at the back of the brain.
#' @format A data frame with 1169 rows and 3 variables:
#' \describe{
#'   \item{\code{id}}{[factor] participant identifier}
#'   \item{\code{stimulus}}{[factor] image shown, one of real image (\code{real}), a one-pass generative adversarial network generate image with slightly happy face (\code{GAN1}) and a two-pass GAN with an extremely happy person (\code{GAN2})}
#'   \item{\code{epoch}}{[factor] ordering of picture}
#'   \item{\code{latency}}{[double] latency of N170 EEG signal for Fz electrode}
#'}
#' @details The data were collected as part of a course project during Winter 2021 (TECH 80747A Information Technologies and Neuroscience), which took place during the Covid19 pandemic. Each student participant had his own apparatus, which explains the large between-participant measurement error.
#' @source Saeed Amirabdolahian, personal communication, licensed under CC BY-NC-SA 4.0
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
#' @source Research Box 289, \url{https://researchbox.org/289}, licensed under CC BY 4.0
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
#' @source Research Box 289, \url{https://researchbox.org/289}, licensed under CC BY 4.0
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
#' @source Open Science Foundation, \url{https://osf.io/sg3su}, licensed under CC0 1.0 Universal
"MANY18_S18"


#' Brucks and Levav (2022), Lab experiment
#'
#' @details The authors recruted 301 pairs of people and assigned them to either face-to-face interactions or videocall. They measured the number of ideas generated during the discussion as well as the fraction of those which were deemed creative using a `creativity_score`. The latter was measured by two undergraduates who evaluated all ideas based on novelty using a Likert scale with 7 points. Participants were asked to pick their most novel idea: the `diff` column measures the  and a `decision_error` score (with smaller values of the latter meaning better decisions).
#'
#' @format A data frame with 301 rows and 8 variables:
#' \describe{
#'   \item{\code{cond}}{[factor] experimental condition, either \code{video} or \code{f2f} for face-to-face}
#'   \item{\code{nidea}}{[integer] number of ideas generated by pair}
#'   \item{\code{ncreative}}{[integer] number of ideas that were above the average creativity score}
#'   \item{\code{select_creative}}{[double] creativity score of the idea each group selected as their most creative idea}
#'   \item{\code{top_creative}}{[double] creativity score of the highest scoring idea in each group}
#'   \item{\code{avg_creative}}{[double] average creativity of all ideas generated by each group}
#'   \item{\code{study}}{[factor] study number}
#'}
#' @references Brucks, M.S. and J. Levav (2022). \emph{Virtual communication curbs creative idea generation}. Nature 605, 108–112. \url{https://doi.org/10.1038/s41586-022-04643-y}
#' @source Research Box 282, \url{https://researchbox.org/282}, licensed under CC BY 4.0
"BL22_L"

#' Brucks and Levav (2022), eyetracker data
#'
#' @details The authors measured via an eyetracker the time spent gazing at the room, at the other partner and at the task during their lab experiment
#'
#' @format A data frame with 270 rows and 6 variables:
#' \describe{
#'  \item{\code{id}}{[factor] identifier of dyad}
#'  \item{\code{writer}}{[logical] whether the person was randomly assigned to be the writer}
#'   \item{\code{cond}}{[factor] experimental condition, either \code{video} for videoconferencing or \code{f2f} for face-to-face}
#'   \item{\code{partner_time}}{[double] time spent looking at partner (in seconds)}
#'   \item{\code{task_time}}{[integer] time spent looking at the task computer (in seconds)}
#'   \item{\code{room_time}}{[double] time spent looking at room (in seconds)}
#'}
#' @references Brucks, M.S. and J. Levav (2022). \emph{Virtual communication curbs creative idea generation}. Nature 605, 108–112. \url{https://doi.org/10.1038/s41586-022-04643-y}
#' @source Research Box 282, \url{https://researchbox.org/282}, licensed under CC BY 4.0
#' @examples
#' \dontrun{
#' library(lme4)
#' mod <- lmer(task_time ~ cond + writer + (1|id),
#'             data = BL22_E)
#' summary(mod)
#' }
"BL22_E"


#' @title Duke and Amir (2022), Experiment 1
#' @description This is a subset of the data from Experiment 1 of Duke and Amir (2022). The study investigated the impact of presenting customers with a sequential choice (first decide whether or not to buy, then pick quantity) as opposed to an integrated decision (choose not to buy, or one of different quantities) on sales and the number of items bought.
#'
#' @format A data frame with 397 rows and 5 variables:
#' \describe{
#'   \item{\code{format}}{[factor] experimental condition, either \code{quantity-integrated} or \code{quantity-sequential}}
#'   \item{\code{purchased}}{[integer] binary variable indicating whether the respondant purchased the item (\code{1}) or not (\code{0})}
#'   \item{\code{amount}}{[integer] amount purchased}
#'   \item{\code{gender}}{[factor] gender of respondant, one of \code{female}, \code{male} or \code{other}}
#'   \item{\code{age}}{[integer] age of respondant}
#'}
#' @source Research Box 602, \url{https://researchbox.org/602}, licensed under CC BY 4.0
#' @references Duke, K.E. and O. Amir (2022+). \emph{The Importance of Selling Formats: When Integrating Purchase and Quantity Decisions Increases Sales}, Marketing Science, \url{https://doi.org/10.1177/0956797614545886}
"DA22_E1"


#' @title Duke and Amir (2022), Experiment 2
#' @description This is a subset of the data from Experiment 2 of Duke and Amir (2022), excluding all answers deemed nonsensical by at least one of the lab assistants. The study investigated the impact of presenting customers with a sequential choice (first decide whether or not to buy, then pick quantity) as opposed to an integrated decision (choose not to buy, or one of different quantities) on sales and the number of items bought.
#'
#' @format A data frame with 325 rows and 7 variables:
#' \describe{
#'   \item{\code{gender}}{[factor] gender of respondant, one of \code{female}, \code{male} or \code{other}}
#'   \item{\code{age}}{[integer] age of respondant}
#'   \item{\code{format}}{[factor] experimental condition, either \code{quantity-integrated} or \code{quantity-sequential}}
#'   \item{\code{purchased}}{[integer] binary variable indicating whether the respondant purchased the item (\code{1}) or not (\code{0})}
#'   \item{\code{amount}}{[integer] amount purchased}
#'   \item{\code{meanval}}{[double] mean scored value}
#'   \item{\code{elength}}{[integer] length of self-reported explanation for their choice (number of characters)}
#'}
#' @source Research Box 602, \url{https://researchbox.org/602}, licensed under CC BY 4.0
#' @references Duke, K.E. and O. Amir (2022+). \emph{The Importance of Selling Formats: When Integrating Purchase and Quantity Decisions Increases Sales}, Marketing Science, \url{https://doi.org/10.1177/0956797614545886}
"DA22_E2"

#' @title Teaching Arithmetic Data
#'
#' @description 45 school pupils were divided at random into five groups of size 9.
#' Groups A (\code{control 1}) and B (\code{control 2}) were taught arithmetic in
#' separate classes by the usual method. Groups C (\code{praise}), D (\code{reprove}),
#' and E (\code{ignore}) were taught together for several days.  On each day group
#' C were publically praised, group D were publically reproved, and group E
#' were ignored.  The responses are from a standard test taken by all pupils at
#' the end of the period.
#'
#' A data frame with 45 rows and 2 variables:
#' \describe{
#' \item{group}{[factor] experimental group, one of \code{control 1}, \code{control 2}, \code{praise}, \code{reprove} or \code{ignore}}
#' \item{score}{[numeric] score on arithmetic test}
#' }
#' @references Davison, A. C. (2003) \emph{Statistical Models}.  Cambridge
#' University Press. Page 427.
#' @source Unpublished lecture notes, Imperial College, London. Extracted from the SMPractical package and distributed under GPL-3 license
#'
#' @keywords datasets
#' @examples
#' data(arithmetic)
#' anova(aov(score ~ group, data = arithmetic))
"arithmetic"

#' @title Sharma, Tully, and Cryder (2021), supplementary study 5
#' @description Supplementary study 5 of Sharma, Tully, and Cryder (2021).
#' The data consist of all observations which correctly identified an attention check.
#' The author tested "whether participants are more interested in borrowed funds when those funds are labeled as credit rather than a loan". The preregistration is available at \url{https://aspredicted.org/blind.php?x=uv2f5p}
#' @format A data frame with 1501 rows and 3 variables:
#' \describe{
#'   \item{\code{purchase}}{[factor] experimental condition for purchase, either \code{discretionary} or non-discretionary (\code{need})}
#'   \item{\code{debttype}}{[factor] experimental condition for label of debt type, either \code{loan} or \code{credit}}
#'   \item{\code{likelihood}}{[double] average score of likelihood in/ interest of using offer to make the purchase (1-9 scale)}
#'}
#' @source Research Box 111, \url{https://researchbox.org/111}, licensed under CC BY 4.0
#' @references Sharma, E., Tully, S. and C. Cryder (2021). \emph{Psychological Ownership of (Borrowed) Money}, Journal of Marketing Research, \bold{58}(3), \url{https://doi.org/10.1177/0022243721993816}
"STC21_SS5"

#' Effects of verbal feedback
#'
#' Fictional balanced 3 by 3 by 2 design with five replications from Keppel and Wickens (Chapter 21).
#' The scenario considered 'effects of verbal feedback given during the acquisition of different types of learning material on memory tested one week later. The response is the number of words remembered from a list of vocabulary words in the lab.
#' @source Keppel and Wickens (2004), Table 21.1, p.466
#' @references Keppel, G., & Wickens, T. D. (2004). \emph{Design and analysis: A researcher’s handbook.}, 4th edition, Pearson Prentice Hall.
#' @format A data frame with 90 rows and 4 variables:
#' \describe{
#'   \item{\code{feedback}}{[factor] feedback manipulation during the learning portion of the experiment, one of \code{none}, \code{positive} or \code{negative}}
#'   \item{\code{material}}{[factor] type of words on the list, either \code{low freq/low emotion}, \code{high freq/low emotion} or \code{high freq/high emotion}}
#'   \item{\code{age}}{[factor] age group, either fifth grader (\code{fifth grader}) or high-school seniors (\code{seniors})}
#'   \item{\code{words}}{[integer] number of words recalled one week after experiment}
#'}
"words"

#' Popcorn experiment
#'
#' Experiment conducted by Jianjian Gong, Chongqing Yan, and Lihua Yang circa 1992. The experiment tried to determine, among three brands of popcorn, which lead to the highest proportion of popped kernels. Power study showed that four replications was needed, but ressources allowed only two replications. This is a completely randomized 3 by 2 by 3 balanced design with 2 replications.
#' @format A data frame with 36 rows and 4 variables:
#' \describe{
#'   \item{\code{brand}}{[factor] brand of the popcorn 3.5 ounce package, one of two national brands and one local brand}
#'   \item{\code{power}}{[factor] power rating of the microwave, either \code{500W} or \code{600W} watts}
#'   \item{\code{time}}{[factor] cooking time, either 4, 4.5 or 5 minutes}
#'   \item{\code{percentage}}{[double] percentage of popped kernels out of the bag}
#'}
#' @source Section 7.4 of Dean, Voss and Draguljić (2017).
#' @references Dean, A., Voss, D., & Draguljić, D. (2017). Design and analysis of experiments. Springer.
"popcorn"


#' Teller data
#'
#' Fictional data from Berger et al. (2018) discussed  in Example 6.4 (First United Federal Bank of Boston). One hunder bank tellers were offered one-on-one training with an experienced clerk for a certain number of weeks on the job, possibly in addition to formal training period. The goal of the study is to determine which combination is most efficient at reducing the monthly error in balance (in dollars).
#' @format A data frame with 100 rows and 3 variables:
#' \describe{
#'   \item{\code{course}}{[factor] whether a formal training was offered (either \code{no} or \code{yes})}
#'   \item{\code{nweeks}}{[factor] number of weeks of training one-to-one with an experienced clerk}
#'   \item{\code{error}}{[double] monthly error in balance account}
#'}
#'
#' @source Berger, P.D, Maurer, R.E. and G.B. Celli (2018). Experimental Design: With Application in Management, Engineering, and the Sciences, 2nd edition, Springer.
"teller"


#' @title Temporal distance on expectations of war and peace
#'
#' @description Study 5 of Halevy and Berson (2022), who aimed to demonstrate that events in the distant future rather than the near future influenced the prospect of peace, along with the degree of abstractness.
#' The experimental design is a "2 (current state: war vs. peace) by 2 (predicted outcome: war vs. peace) by 2 (temporal distance: next year vs. twenty years into the future) mixed design", with current state and predicted outcome as between-subject factors and temporal distance as within-subject factor. The response is the estimated likelihood of each outcome on a 7-point Likert scale ranging from extremely unlikely (1) to extremely likely (7). Data are presented in long-format.
#' The question asked was of the form «There is currently [war/peace] between the two tribes in Velvetia.  Thinking about [next year/in 20 years], how likely is it that there will be [war/peace] in Velvetia?»
#'
#' @format A data frame with 554 rows and 7 variables:
#' \describe{
#'   \item{\code{id}}{[integer] identifier of participant}
#'   \item{\code{likelihood}}{[integer] likelihood of an outcome on a 7 point Likert scale given the current state}
#'   \item{\code{curstate}}{[factor] factor describing the current state of Velvetia, one of \code{peace} or \code{war}}
#'   \item{\code{predout}}{[factor] predicted outcome, one of \code{peace} or \code{war}}
#'   \item{\code{tempdist}}{[factor] within-subject factor for the temporal distance, either next year (\code{1yr}) or far future (\code{20yr})}
#'   \item{\code{age}}{[integer] age of participant}
#'   \item{\code{gender}}{[factor] gender of participant}
#' }
#' @source ResearchBox 567, \url{https://researchbox.org/567}, licensed under CC BY 4.0
#' @references Halevy, N., & Berson, Y. (2022). Thinking about the distant future promotes the prospects of peace: A construal-level perspective on intergroup conflict resolution. Journal of Conflict Resolution, 66(6), 1119–1143. \url{https://doi.org/10.1177/00220027221079402}
"HB22_S5"


#' Standing desks and cognitive performance
#'
#' Perceived performance for standing desk (relative to sitting desk) measured from questionnaires and obtained from electroencephalograph (EEG) data.
#'
#' @format A data frame with 296 rows and 14 variables:
#' \describe{
#'   \item{\code{id}}{[factor] participant identifier}
#'   \item{\code{order}}{[integer] order in which tasks were performed, termed "fatigue" in the paper}
#'   \item{\code{position}}{[factor] work position, either \code{standing} or \code{sitting}}
#'   \item{\code{phys_demand}}{[factor] manipulation using either \code{mouse} or \code{touchpad}}
#'   \item{\code{task_diff}}{[factor] task difficulty, either \code{easy} or \code{difficult}}
#'   \item{\code{ies}}{[double] inverse efficiency score global stimulus}
#'   \item{\code{central_alpha}}{[double] alpha for central region}
#'   \item{\code{parietal_alpha}}{[double] alpha for parietal region}
#'   \item{\code{central_beta}}{[double] beta for central region}
#'   \item{\code{parietal_beta}}{[double] alpha for parietal region}
#'   \item{\code{bmi}}{[double] body mass index}
#'   \item{\code{sex}}{[factor] sex, either \code{man} or \code{woman}}
#'   \item{\code{attention}}{[double] attention scale, average of 6 items}
#'   \item{\code{satisfaction}}{[double] satisfaction score, a scale composed of 3 items}
#'}
#' @source Shang Lin Chen, personal communication, distributed under CC BY-NC-SA 4.0
#' @references Labonté-LeMoyne, E., Jutras, M.-A., Léger, P.-M., Sénécal, S., Fredette, M., Begon, M., and Mathieu, M.-E. (2020). \emph{Does Reducing Sedentarity With Standing Desks Hinder Cognitive Performance? Human Factors}, 62(\bold{4}), 603–612. \url{https://doi.org/10.1177/0018720819879310}
"LJLSFBM20"

#' Distractions from smartwatches while driving
#'
#' Experiment from Tech3Lab using a driving simulator to study
#' the impact of various distraction on attention and performance.
#' The experimental conditions were compared in Table 3 of Brodeur et al. (2021)
#' using Wilcoxon's signed rank test.
#' @format A data frame with 124 rows and 3 variables:
#' \describe{
#'   \item{\code{id}}{[factor] participant identifier}
#'   \item{\code{task}}{[factor] type of distraction}
#'   \item{\code{nviolation}}{[integer] total number of violations}
#'}
#' @source Shang Lin Chen, personal communication, distributed under CC BY-NC-SA 4.0
#' @references Brodeur, M., Ruer, P. Léger, P. and S. Sénécal (2021).Smartwatches are more distracting than mobile phones while driving: Results from an experimental study, \emph{Accident Analysis & Prevention}, 149, 1-9.
"BRLS21_T3"

#' @title Smartwatch measures for distractions while driving
#' @description Electrodermal activity measured by a smartwatch as part of an experiment on
#' impact of smartwatches on distraction while driving. The experiment was conducted at Tech3Lab, but the data are not utilized in the paper.
#' @format A data frame with 10942 rows and 6 variables:
#' \describe{
#'   \item{\code{id}}{[factor] participant identifier}
#'   \item{\code{reltime}}{[integer] relative time of the task}
#'   \item{\code{task}}{[factor] task, one of \code{baseline} or distraction, either a notification from the \code{cell}, from a phone call \code{voicecall} or via the smartwatch (\code{watch})}
#'   \item{\code{occurence}}{[integer] number of occurences}
#'   \item{\code{eda}}{[double] electrodermal activity measure}
#'   \item{\code{hr}}{[double] heart rate}
#'}
#' @source Shang Lin Chen, personal communication, distributed under CC BY-NC-SA 4.0
#' @references Brodeur, M., Ruer, P. Léger, P. and S. Sénécal (2021).Smartwatches are more distracting than mobile phones while driving: Results from an experimental study, \emph{Accident Analysis & Prevention}, 149, 1-9.
"BRLS21_EDA"

#' @title Work hours
#' @description Simulated data for a one-way random effect model on employee attendance.
#' @format A data frame with 320 rows and 3 variables:
#' \describe{
#'   \item{\code{id}}{[factor] employee identifier}
#'   \item{\code{week}}{[factor] week of timing}
#'   \item{\code{time}}{[double] time spent on HEC premises}
#'}
#' @author Leo Belzile
"workhours"


#' @title Hatano et al. (2022), Experiment 3
#' @description The data consist in a two by two mixed analysis of variance. The authors studied engagement and enjoyment from waiting tasks, and "potential effects of time interval on the underestimation of task motivation by manipulating the time for the waiting task". The waiting time was randomly assigned to either short (3 minutes) or long (20 minutes).
#' @format A data frame with 126 rows and 4 variables:
#' \describe{
#'   \item{\code{id}}{[factor] subject identifier}
#'   \item{\code{waiting}}{[factor] experimental condition for waiting time, either \code{short} or \code{long}}
#'   \item{\code{ratingtype}}{[factor] experimental within-subject factor, either \code{prediction} or \code{experience}}
#'   \item{\code{imscore}}{[double] response, intrinsic motivation score}
#'}
#' @references Hatano, A., Ogulmus, C., Shigemasu, H., & Murayama, K. (2022). \emph{Thinking About Thinking: People Underestimate How Enjoyable and Engaging Just Waiting Is}. Journal of Experimental Psychology: General, 151(\bold{12}), 3213–3229 \url{http://dx.doi.org/10.1037/xge0001255}
"HOSM22_E3"


#' @title Hatano et al. (2022), Experiment 4
#' @description The authors examined the enjoyment and engagement from waiting tasks, doing nothing. The participants were asked to predict their levels of enjoyment and engagement during and after the task. The authors fitted a linear mixed model with an interaction between rating type and interim rating time; the latter is centered by subtracting ten minutes (the mode is 9).
#' @format A data frame with 80 rows and 4 variables:
#' \describe{
#'   \item{\code{id}}{[factor] subject identifier}
#'   \item{\code{ratingtype}}{[factor] experimental within-subject factor, either \code{prediction} or \code{experience}}
#'   \item{\code{imscore}}{[double] response, intrinsic motivation score}
#'   \item{\code{irtime}}{[integer] interim rating time minus 10 minutes}
#'}
#' @references Hatano, A., Ogulmus, C., Shigemasu, H., & Murayama, K. (2022). \emph{Thinking About Thinking: People Underestimate How Enjoyable and Engaging Just Waiting Is}. Journal of Experimental Psychology: General, 151(\bold{12}), 3213–3229 \url{http://dx.doi.org/10.1037/xge0001255}
"HOSM22_E4"

#' @title Garcia et al. (2010
#' @description These data are from a study on gender discrimination. Participants were put with a file where a women was turned down promotion in favor of male colleague despite her being clearly more experimented and qualified. The authors manipulated the decision of the participant to this decision, either choosing not to challenge the decision (\code{no protest}), a request to reconsider based on individual qualities of the applicants (\code{individual}) and a request to reconsider based on abilities of women (\code{collective}).
#'
#' All items were measured using scales constructed using items measured using Likert scales ranging from strongly disagree (\code{1}) to strongly agree (\code{7}).
#' @source Hayes, A. F. (2021), Introduction to Mediation, Moderation, and Conditional Process Analysis: A Regression-Based Approach, 3rd edition, Guilford Press.
#' @references Garcia, D.M., Schmitt, M.T., Branscombe, N.R. and Ellemers, N. (2010), Women's reactions to ingroup members who protest discriminatory treatment: The importance of beliefs about inequality and response appropriateness. \emph{European Journal of Social Psycholog.}, \bold{40}, 733-745. \url{https://doi.org/10.1002/ejsp.644}
#' @format A data frame with 129 rows and 5 variables:
#' \describe{
#'   \item{\code{protest}}{[factor] experimental condition}
#'   \item{\code{likeability}}{[double] likeability score for Catherine, average of 6 items}
#'   \item{\code{angry}}{[double] Likert scale for "I feel angry at Catherine"}
#'   \item{\code{respeval}}{[double] evaluation of the appropriateness of the response of Catherine}
#'   \item{\code{sexism}}{[double] average of 6 Likert scales for the Modern Sexism Scale assessing pervasiveness of gender discrimination}
#'}
"GSBE10"


#' @title Moon and vanEpps (2022+), Study 1
#' @description Study 1 considers proportion of donators to a charity. Participants in the online panel were provided with an opportunity to win 25$ and donate part of this amount to a charity of their choosing. The data provided include only people who did not exceed this amount and indicated donating a non-zero amount.
#' @format A data frame with 869 rows and 4 variables:
#' \describe{
#'   \item{\code{before}}{[integer] did people donate before to this charity? 0 for no, 1 for yes.}
#'   \item{\code{donate}}{[integer] did people choose to donate (donate before to this charity? 0 for no, 1 for yes.}
#'   \item{\code{condition}}{[factor] experimental condition, either an \code{open-ended} amount or a suggested \code{quantity}}
#'   \item{\code{amount}}{[double] amount of proposed donation, \code{NA} if the person declined to donate}
#'}
#'
#' @references Moon, A. and EM VanEpps (2022+). \emph{Giving Suggestions: Using Quantity Requests to Increase Donations}, Journal of Consumer Research, \url{https://doi.org/10.1093/jcr/ucac047}
#' @source Research Box 54, \url{https://researchbox.org/54}, licensed under CC BY 4.0
#' @examples
#' ctab <- with(MV22_S1, table(donate, condition))
#' # Chi-square test of independence
#' chisq_test <- chisq.test(ctab, correct = FALSE)
#' chisq_test
#' # Effect size
#' sqrt(chisq_test$statistic/nrow(MV22_S1))
#' # Welch t-test
#' t.test(amount ~ condition, MV22_S1)
"MV22_S1"

#' @title  Moon and vanEpps (2022+), Study 4
#' @description The authors studied the impact on donation amount of manipulating the minimal suggested amount. The benchmark was an open-ended box, with quantity featuring a minimum value, 15$, 25$ or an alternative amount. The authors also recorded whether the person had donated before.
#' @format A data frame with 996 rows and 3 variables:
#' \describe{
#'   \item{\code{donate}}{[integer] did people choose to donate (donate before to this charity? 0 for no, 1 for yes.}
#'   \item{\code{condition}}{[factor] experimental condition, either an \code{open-ended} amount or a suggested amount of \code{quantity1}, \code{quantity5} or \code{quantity10} for one, five and 10 dollars.}
#'   \item{\code{amount}}{[double] amount of proposed donation, \code{NA} if the person declined to donate}
#'}
#'
#' @references Moon, A. and EM VanEpps (2022+). \emph{Giving Suggestions: Using Quantity Requests to Increase Donations}, Journal of Consumer Research, \url{https://doi.org/10.1093/jcr/ucac047}
#' @source Research Box 54, \url{https://researchbox.org/54}, licensed under CC BY 4.0
"MV22_S4"



#' @title  Moon and vanEpps (2022+), Supplementary study H
#' @description After completing an unrelated study, the authors proposed to participants on MTurk to donate of their time for a social cause (net neutrality) by completing an optional survey for a prosocial cause. Participants were assigned to the open-ended choice or offered to complete up to 3 additional sections with demographics (1), plus internet use (2) and political attitudes (3). The study aims to study generosity, but without involving windfall.
#' @format A data frame with 1206 rows and 3 variables:
#' \describe{
#'   \item{\code{donate}}{[integer] did people choose to donate time? Either no (\code{0}) or yes (\code{1})}
#'   \item{\code{condition}}{[factor] experimental condition, either an \code{open-ended} amount or a \code{quantity}.}
#'   \item{\code{amount}}{[integer] number of additional questionnaire (up to 3).}
#'}
#'
#' @references Moon, A. and EM VanEpps (2022+). \emph{Giving Suggestions: Using Quantity Requests to Increase Donations}, Journal of Consumer Research, \url{https://doi.org/10.1093/jcr/ucac047}
#' @examples
#' \dontrun{
#' chisq.test(with(MV22_SH,
#'                 table(donate, condition)),
#'            correct = FALSE)
#' # Average non-zero contributions
#' # by default, missing values are ignored
#' wilcox_anz <- coin::wilcox_test(
#'   amount ~ condition,
#'   data = MV22_SH)
#' # Transform no donation to zero
#' MV22_SH$amount0 <- with(MV22_SH,
#' ifelse(donate == 0L, 0, amount))
#' wilcox_az <- coin::wilcox_test(
#'   amount0 ~ condition,
#'   data = MV22_SH)
#' }
#' @source Research Box 54, \url{https://researchbox.org/54}, licensed under CC BY 4.0
"MV22_SH"

#' Jordan et al. (2022), Experiment 2
#'
#' The authors studied how confidence in people skill to land a plane (with no experience) and it was affected by watching a trivially related video showing a landing.
#' @format A data frame with 582 rows and 7 variables:
#' \describe{
#'   \item{\code{condition}}{[factor] experimental condition, one of \code{video} or \code{no video}}
#'   \item{\code{order}}{[factor] order of the questions, \code{dying first} or \code{pilot first}}
#'   \item{\code{conf_dying}}{[integer] Likert scale from 0 (not at all confident to 100 (very confident) for the question: "How confident are you that you would be able to land the plane without dying"}
#'   \item{\code{conf_pilot}}{[integer] Likert scale from 0 (not at all confident to 100 (very confident) for the question: "How confident are you that you would be able to successfully land the plane as well as a pilot could"}
#'   \item{\code{expertise}}{[integer] Likert scale ranging from no expertise (\code{1}) to a great deal of expertise (\code{5}) answering the question "How much expertise do you think is involved in landing a plane"}
#'   \item{\code{ease_imagining}}{[integer] Likert scale ranging from not at all difficult (\code{1}) to very difficult (\code{5}) for the answer to the question "How difficult was it for you to imagine attempting to land the plane."}
#'   \item{\code{gender}}{[factor] gender of participant, one of \code{man}, \code{woman} or other (\code{gender diverse}}
#'}
#' @references Jordan, K., R. Zajac, D. Bernstein, C. Joshi and M. Garry (2022). \emph{Trivially informative semantic context inflates people's confidence they can perform a highly complex skill}, Royal Society Open Science,\bold{9}, 211977, \url{http://doi.org/10.1098/rsos.211977}
#' @source Research Box 511, \url{https://researchbox.org/511}, licensed under CC BY 4.0
"JZBJG_E2"
