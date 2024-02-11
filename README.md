
# hecedsm

This **R** package contains data sets for the HEC Montreal PhD course
MATH 80667A (Experimental Design and Statistical Methods).

Most of the databases are extracted from journal articles who shared
their data on Open Science Foundation, on Research Box or otherwise.

You can install the package from Github using the following commands
after installing `remotes`:

``` r
# Uncomment this line if the package 'remotes' isn't installed
#install.packages("remotes") 
remotes::install_github("lbelzile/hecedsm")
```

| name                                                                       | source                                                                                              | usage                                                  |
|:---------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------|:-------------------------------------------------------|
| [AA21](https://lbelzile.github.io/hecedsm/reference/AA21.html)             | Amirabdolahian and Ali-Adeeb (2021)                                                                 | repeated measures, linear mixed model                  |
| [AVC02](https://lbelzile.github.io/hecedsm/reference/AVC02.html)           | [Anandarajan, Viger and Curatola (2002)](https://doi.org/10.1506/5947-NQTC-C3Y5-H46N)               | MANOVA                                                 |
| [BJF14_S1](https://lbelzile.github.io/hecedsm/reference/BJF14_S1.html)     | [Bastian, Jetten and Ferris (2014)](https://doi.org/10.1177/0956797614545886)                       | one-way ANOVA                                          |
| [BL22_E](https://lbelzile.github.io/hecedsm/reference/BL22_E.html)         | [Brucks and Levav (2022), eyetracker data](https://doi.org/10.1038/s41586-022-04643-y)              | Kruskall-Wallis test                                   |
| [BL22_L](https://lbelzile.github.io/hecedsm/reference/BL22_L.html)         | [Brucks and Levav (2022), Lab experiment](https://doi.org/10.1038/s41586-022-04643-y)               | negative binomial regression, linear mixed model       |
| [BMH19_S2](https://lbelzile.github.io/hecedsm/reference/BMH19_S2.html)     | [Bobak, Mileva and Hancock (2019), Study 2](https://doi.org/10.1186/s41235-019-0174-3)              | one-way ANOVA, repeated measures                       |
| [BRLS21_EDA](https://lbelzile.github.io/hecedsm/reference/BRLS21_EDA.html) | [Brodeur et al. (2021) exploratory data analysis](https://doi.org/10.1016/j.aap.2020.105846)        | linear mixed model, repeated measure ANOVA             |
| [BRLS21_T3](https://lbelzile.github.io/hecedsm/reference/BRLS21_T3.html)   | [Brodeur et al. (2021), Table 3](https://doi.org/10.1016/j.aap.2020.105846)                         | Wilcoxon signed-rank test                              |
| [BSJ92](https://lbelzile.github.io/hecedsm/reference/BSJ92.html)           | [Baumann, Seifert-Kessell and Jones (1992)](https://doi.org/10.1080/10862969209547770)              | one-way ANOVA, ANCOVA                                  |
| [C16](https://lbelzile.github.io/hecedsm/reference/C16.html)               | [Chandler (2016) replication](https://doi.org/10.17605/OSF.IO/EZCUJ)                                | two-way ANOVA                                          |
| [C18](https://lbelzile.github.io/hecedsm/reference/C18.html)               | [Clayton (2018)](https://doi.org/10.1017/XPS.2018.8)                                                | linear mixed model, clustered standard errors          |
| [C22](https://lbelzile.github.io/hecedsm/reference/C22.html)               | [Curley et al. (2022)](https://doi.org/10.1080/13218719.2021.1904450)                               | linear mixed model, incomplete design                  |
| [DA22_E1](https://lbelzile.github.io/hecedsm/reference/DA22_E1.html)       | [Duke and Amir (2022), Experiment 1](https://doi.org/10.1287/mksc.2022.1364)                        | t-test                                                 |
| [DA22_E2](https://lbelzile.github.io/hecedsm/reference/DA22_E2.html)       | [Duke and Amir (2022), Experiment 2](https://doi.org/10.1287/mksc.2022.1364)                        | one-way ANOVA, logistic regression                     |
| [FBC66_T1](https://lbelzile.github.io/hecedsm/reference/FBC66_T1.html)     | [Flavell, Beach and Chinsky (1966), Table 1](https://doi.org/10.2307/1126804)                       | chi-square test                                        |
| [GK14_S3](https://lbelzile.github.io/hecedsm/reference/GK14_S3.html)       | [Grossman and Kross (2014), Study 3](https://doi.org/10.1177/0956797614535400)                      | one-way ANOVA, multiple testing, contrasts             |
| [GSBE10](https://lbelzile.github.io/hecedsm/reference/GSBE10.html)         | [Garcia et al. (2010)](https://doi.org/10.1002/ejsp.644)                                            | mediation                                              |
| [GSC20_E2](https://lbelzile.github.io/hecedsm/reference/GSC20_E2.html)     | [Gaesser, Shimura and Cikara (2020), Experiment 2](https://doi.org/10.1037/pspi0000194)             | linear mixed model, hierarchical model                 |
| [HB22_S5](https://lbelzile.github.io/hecedsm/reference/HB22_S5.html)       | [Halevy and Berson (2022), Study 5](https://doi.org/10.1177/00220027221079402)                      | three-way mixed design                                 |
| [HOSM22_E3](https://lbelzile.github.io/hecedsm/reference/HOSM22_E3.html)   | [Hatano et al. (2022), Experiment 3](https://doi.org/10.1037/xge0001255)                            | two-way mixed ANOVA                                    |
| [HOSM22_E4](https://lbelzile.github.io/hecedsm/reference/HOSM22_E4.html)   | [Hatano et al. (2022), Experiment 4](https://doi.org/10.1037/xge0001255)                            | linear mixed model,                                    |
| [JCD14_S2](https://lbelzile.github.io/hecedsm/reference/JCD14_S2.html)     | [Johnson, Cheung and Donnellan (2014), Study 2](https://doi.org/10.1027/1864-9335/a000186)          | t-test                                                 |
| [JZBJG22_E2](https://lbelzile.github.io/hecedsm/reference/JZBJG22_E2.html) | [Jordan et al. (2022), Experiment 2](https://doi.org/10.1098/rsos.211977)                           | two-way ANOVA                                          |
| [LBJ17_S1A](https://lbelzile.github.io/hecedsm/reference/LBJ17_S1A.html)   | [Lages, Boyle and Jenkins (2017) Study 1A](https://doi.org/10.1177/0956797617705391)                | three-way mixed design                                 |
| [LC19_S1](https://lbelzile.github.io/hecedsm/reference/LC19_S1.html)       | [Lee and Choi (2019), Study 1](https://doi.org/10.1016/j.jretconser.2019.03.015)                    | ANCOVA                                                 |
| [LC19_S2](https://lbelzile.github.io/hecedsm/reference/LC19_S2.html)       | [Lee and Choi (2019), Study 2](https://doi.org/10.1016/j.jretconser.2019.03.015)                    | ANCOVA, mediation                                      |
| [LC19_T2](https://lbelzile.github.io/hecedsm/reference/LC19_T2.html)       | [Lee and Choi (2019), Table 2](https://doi.org/10.1016/j.jretconser.2019.03.015)                    | chi-square test                                        |
| [LJLSFBM20](https://lbelzile.github.io/hecedsm/reference/LJLSFBM20.html)   | [Labonté-LeMoyne et al. (2020)](https://doi.org/10.1177/0018720819879310)                           | repeated measures, three-way ANOVA, linear mixed model |
| [LRMM23_S1](https://lbelzile.github.io/hecedsm/reference/LRMM23_S1.html)   | [Liu et al. (2023) Study 1](https://doi.org/10.1037/pspi0000402)                                    | two-way ANOVA                                          |
| [LRMM23_S3](https://lbelzile.github.io/hecedsm/reference/LRMM23_S3.html)   | [Liu et al. (2023), Study 3](https://doi.org/10.1037/pspi0000402)                                   | paired t-test                                          |
| [LRMM23_S5b](https://lbelzile.github.io/hecedsm/reference/LRMM23_S5b.html) | [Liu et al. (2013), Study 5b](https://doi.org/10.1037/pspi0000402)                                  | t-test, mediation                                      |
| [MANY18_S18](https://lbelzile.github.io/hecedsm/reference/MANY18_S18.html) | [ManyLab2 replication of Risen and Gilovich (2008)](https://doi.org/10.1177/2515245918810225)       | effect size, two-way ANOVA, random effect              |
| [MP14_S1](https://lbelzile.github.io/hecedsm/reference/MP14_S1.html)       | [Maglio and Polman (2014), Study 2](https://doi.org/10.1177/0956797614530571)                       | two-way ANOVA                                          |
| [MULTI21_D1](https://lbelzile.github.io/hecedsm/reference/MULTI21_D1.html) | [Elliot et al. (2021), dataset 1](https://doi.org/10.1177/2515245921101)                            | chi-square test, hierarchical                          |
| [MULTI21_D2](https://lbelzile.github.io/hecedsm/reference/MULTI21_D2.html) | [Elliot et al. (2021), dataset 2](https://doi.org/10.1177/2515245921101)                            | linear mixed model, ANOVA                              |
| [MV23_S1](https://lbelzile.github.io/hecedsm/reference/MV23_S1.html)       | [Moon and vanEpps (2023), Study 1](https://doi.org/10.1093/jcr/ucac047)                             | chi-square test, t-test                                |
| [MV23_S4](https://lbelzile.github.io/hecedsm/reference/MV23_S4.html)       | [Moon and vanEpps (2023), Study 4](https://doi.org/10.1093/jcr/ucac047)                             | logistic regression                                    |
| [MV23_SH](https://lbelzile.github.io/hecedsm/reference/MV23_SH.html)       | [Moon and vanEpps (2023), Supplementary study H](https://doi.org/10.1093/jcr/ucac047)               | Wilcoxon test, chi-square test                         |
| [RH19_S1](https://lbelzile.github.io/hecedsm/reference/RH19_S1.html)       | [Roczniewska and Higgins (2019), Study 1](https://doi.org/10.1016/j.jesp.2019.103882)               | mediation                                              |
| [RJ74](https://lbelzile.github.io/hecedsm/reference/RJ74.html)             | [Rosen and Jerdee (1974)](https://doi.org/10.1037/h0035834)                                         | chi-square test                                        |
| [SKD23_S2A](https://lbelzile.github.io/hecedsm/reference/SKD23_S2A.html)   | [Sokolova el al. (2023), Study 2A](https://doi.org/10.1093/jcr/ucad008)                             | one-way ANOVA, contrasts                               |
| [SSVB21_S2](https://lbelzile.github.io/hecedsm/reference/SSVB21_S2.html)   | [van Stekelenburg et al. (2021), Study 2](https://doi.org/10.1177/09567976211007788)                | ANCOVA                                                 |
| [SSVB21_S3](https://lbelzile.github.io/hecedsm/reference/SSVB21_S3.html)   | [van Stekelenburg et al. (2021), Study 3](https://doi.org/10.1177/09567976211007788)                | ANCOVA                                                 |
| [STC21_SS5](https://lbelzile.github.io/hecedsm/reference/STC21_SS5.html)   | [Sharma, Tully, and Cryder (2021), supplementary study 5](https://doi.org/10.1177/0022243721993816) | two-way ANOVA                                          |
