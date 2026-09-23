# Leckfor et al (2023), Study 3

Moderation analysis for need for satisfaction. The author postulated
that the type of rejection (control, being ghosted or rejected) would
moderate the effect of the need for closure. The authors postulated that
there would be "lower needs satisfaction after being ghosted".

## Usage

``` r
LWSH23_S3
```

## Format

A data frame with 545 rows and 7 variables:

- `cond`:

  \[factor\] condition, one of `included` (control), `ghosted` and
  `directly rejected` and postulated mediator

- `needsatis`:

  \[double\] need for satisfaction, response variable

- `needclosure`:

  \[double\] need for closure, an average of 15 Likert scale,
  explanatory variable

- `age`:

  \[integer\] age of respondant

- `gender`:

  \[factor\] gender of respondent, either `woman`, `man` or `other`

- `reltype`:

  \[factor\] type of romantic relationship, either `casually dating`,
  `friendship`, `romantic relationship`

- `rel`:

  \[double\] answer to the questions "how you felt toward the other
  person before the situation you just described ...", with high values
  demanding more involvement and commitment to the relationship

## References

Leckfor CM, Wood NR, Slatcher RB, Hales AH (2023) From close to ghost:
Examining the relationship between the need for closure, intentions to
ghost, and reactions to being ghosted. *Journal of Social and Personal
Relationships*, 40(**8**), 2422-2444.
[doi:10.1177/02654075221149955](https://doi.org/10.1177/02654075221149955)

## Examples

``` r
mod <- lm(data = LWSH23_S3, needsatis ~ needclosure * cond)
anova(mod)
#> Analysis of Variance Table
#> 
#> Response: needsatis
#>                   Df  Sum Sq Mean Sq  F value    Pr(>F)    
#> needclosure        1    3.89    3.89   4.2617   0.03946 *  
#> cond               2 1346.92  673.46 738.6146 < 2.2e-16 ***
#> needclosure:cond   2   18.58    9.29  10.1863 4.547e-05 ***
#> Residuals        539  491.46    0.91                       
#> ---
#> Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# process(data = LWSH23_S3, y = "needsatis", x = "needclosure",
#  w = "cond", mcw = 1, model = 1, plot = 1, intprobe = 1, moments = 1)
```
