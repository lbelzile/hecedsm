# Teaching Arithmetic Data

45 school pupils were divided at random into five groups of size 9.
Groups A (`control 1`) and B (`control 2`) were taught arithmetic in
separate classes by the usual method. Groups C (`praise`), D
(`reprove`), and E (`ignore`) were taught together for several days. On
each day group C were publically praised, group D were publically
reproved, and group E were ignored. The responses are from a standard
test taken by all pupils at the end of the period.

A data frame with 45 rows and 2 variables:

- group:

  \[factor\] experimental group, one of `control 1`, `control 2`,
  `praise`, `reprove` or `ignore`

- score:

  \[numeric\] score on arithmetic test

## Usage

``` r
arithmetic
```

## Format

An object of class `data.frame` with 45 rows and 2 columns.

## Source

Unpublished lecture notes, Imperial College, London. Extracted from the
SMPractical package and distributed under GPL-3 license

## References

Davison, A. C. (2003) *Statistical Models*. Cambridge University Press.
Page 427.

## Examples

``` r
data(arithmetic)
anova(aov(score ~ group, data = arithmetic))
#> Analysis of Variance Table
#> 
#> Response: score
#>           Df Sum Sq Mean Sq F value    Pr(>F)    
#> group      4 722.67 180.667  15.268 1.163e-07 ***
#> Residuals 40 473.33  11.833                      
#> ---
#> Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
```
