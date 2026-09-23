# Sokolova el al. (2023), Study 2A

The study considers the environmental perception of packaging when
objects contain paper/cardboard wrapping, in addition to plastic
container. The authors postulated that the more the quantity of paper,
the more ecofriendly the package was perceived to be and that this
relations increases with the proportion of paper wrapping relative to
plastic. The study used a between-subject design with four categories,
and recruited 802 participants on MTurk.

## Usage

``` r
SKD23_S2A
```

## Format

A data frame with 802 rows and 3 variables:

- `pef`:

  \[double\] vector of perceived environmental friendliness

- `mcheck`:

  \[double\] manipulation check for proportion

- `proportion`:

  \[double\] proportion of plastic to paper

## Source

Research Box 712, <https://researchbox.org/712>, licensed under CC BY
4.0

## References

Sokolova T, Krishna A, Döring T. (2023) *Paper Meets Plastic: The
Perceived Environmental Friendliness of Product Packaging*. Journal of
Consumer Research, 50(3), 468–491.
[doi:10.1093/jcr/ucad008](https://doi.org/10.1093/jcr/ucad008)

## Examples

``` r
data(SKD23_S2A, package = "hecedsm")
# Treat data as continuous
linmod <- lm(pef ~ proportion, data = SKD23_S2A)
anova(linmod)
#> Analysis of Variance Table
#> 
#> Response: pef
#>             Df  Sum Sq Mean Sq F value    Pr(>F)    
#> proportion   1  124.32 124.318  72.452 < 2.2e-16 ***
#> Residuals  800 1372.69   1.716                      
#> ---
#> Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
anovamod <- lm(pef ~ factor(proportion), data = SKD23_S2A)
margmean <- anovamod |>  emmeans::emmeans(specs = "proportion")
emmeans::contrast(margmean,
 method = list(refvshalf = c(1, -1, 0, 0),
               refvsone =  c(1, 0, -1, 0),
               refvstwo =  c(1, 0, 0, -1)))
#>  contrast  estimate    SE  df t.ratio p.value
#>  refvshalf   -0.749 0.131 798  -5.713 <0.0001
#>  refvsone    -0.901 0.131 798  -6.893 <0.0001
#>  refvstwo    -1.182 0.129 798  -9.196 <0.0001
#> 
```
