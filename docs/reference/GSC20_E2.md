# Gaesser, Shimura and Cikara (2020), Experiment 2

Data obtained by running an online survey on Qualtrics. Self-report
questions on thoughts, feeling and self-attributes, in the context of a
competition between parties. Participants reported their political
preferences, but were randomly allocated to either Democrat or
Republican team. The description implied a problem-solving challenge
(which did not occur).

## Usage

``` r
GSC20_E2
```

## Format

A data frame with 5810 rows and 8 variables:

- `id`:

  \[factor\] participant identifier

- `help`:

  \[integer\] experimental manipulation either episodic helping, or no
  help (`control`)

- `group`:

  \[factor\] group, either `in` or `out` group

- `story`:

  \[factor\] story narrative, one from `A` to `J`

- `scene_imagery`:

  \[double\] standardized score for scene imagery, "Did you imagine a
  scene of helping the person in your mind?",(1=not at all, 4=moderate,
  7=coherently and clearly)

- `person_imagery`:

  \[double\] standardized score for person imagery, "Did you visualize
  the person in your mind?" (1=vividly, as if you were currently there,
  4=moderate, 7=not at all)

- `persp_taking`:

  \[double\] standardized score on the perspective, "Did you consider
  the person's thoughts and feelings?" (1=not at all, 4=moderate,
  7=strongly considered)

- `willing_help`:

  \[double\] standardized score for willingess to help, "How likely
  would you be to help in this situation?" (1=not at all, 4=moderately
  willing, 7=very willing)

## Note

The participant demographic information is given in the attributes as
metadata.

## References

Gaesser, B., Shimura, Y., & Cikara, M. (2020). Episodic simulation
reduces intergroup bias in prosocial intentions and behavior. *Journal
of Personality and Social Psychology*, 118(**4**), 683–705.
[doi:10.1037/pspi0000194](https://doi.org/10.1037/pspi0000194)

## Examples

``` r
# Authors coded -1/1 for group and help
# Unweighted regression (different weights depending on sample size)
GSC20_E2$group_w <- ifelse(GSC20_E2$group=="in", 1, -1)
help_num <- -with(GSC20_E2, sum(help == "episodic") / sum(help == "control"))
GSC20_E2$help_w <- ifelse(GSC20_E2$help == "episodic", 1, -help_num)
GSC20_E2$group_bin <- ifelse(GSC20_E2$group == "control", -1, 1)
GSC20_E2$help_bin <- ifelse(GSC20_E2$help == "in", 1, -1)
lme4::lmer(willing_help ~ group*help + (1 + group | id) + (1 | story), data = GSC20_E2)
#> Linear mixed model fit by REML ['lmerMod']
#> Formula: willing_help ~ group * help + (1 + group | id) + (1 | story)
#>    Data: GSC20_E2
#> REML criterion at convergence: 19273.23
#> Random effects:
#>  Groups   Name        Std.Dev. Corr  
#>  id       (Intercept) 1.1271         
#>           groupout    0.4348   -0.11 
#>  story    (Intercept) 0.3376         
#>  Residual             1.1026         
#> Number of obs: 5810, groups:  id, 581; story, 10
#> Fixed Effects:
#>           (Intercept)               groupout           helpepisodic  
#>               -0.3516                -0.2641                 0.9322  
#> groupout:helpepisodic  
#>                0.1005  
lme4::lmer(willing_help ~ group_w*help_w + (1 + group_w | id) + (1 | story), data = GSC20_E2)
#> Linear mixed model fit by REML ['lmerMod']
#> Formula: willing_help ~ group_w * help_w + (1 + group_w | id) + (1 | story)
#>    Data: GSC20_E2
#> REML criterion at convergence: 19262.05
#> Random effects:
#>  Groups   Name        Std.Dev. Corr  
#>  id       (Intercept) 1.1240         
#>           group_w     0.2174   -0.08 
#>  story    (Intercept) 0.3375         
#>  Residual             1.1026         
#> Number of obs: 5810, groups:  id, 581; story, 10
#> Fixed Effects:
#>    (Intercept)         group_w          help_w  group_w:help_w  
#>        -31.705           1.729          32.204          -1.647  
```
