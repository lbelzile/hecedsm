# Hart and Schweitzer (2022) pilot study

The authors measured the economic relevance of relational outcomes
(ERRO), by substracting the participants rating for good versus bad
relationships, which rated from -10 (much worse) to 10 (much better).
The data are presented in long format for each of the three
items/services split by category.

## Usage

``` r
HS22_P
```

## Format

A data frame with 5808 rows and 7 variables:

- `id`:

  \[factor\] participant identifier

- `score`:

  \[double\] ERRO score

- `item`:

  \[factor\] item

- `category`:

  \[factor\] category of the item, either `product` or `service`

- `negotcl`:

  \[factor\] took negotiation class

- `gender`:

  \[factor\] gender of participant, either `female` or `male`

- `age`:

  \[integer\] age of the participant

## Source

Research Box 366, <https://researchbox.org/366>, licensed under CC BY
4.0

## References

Hart E, Schweitzer ME. (2022) *When we should care more about
relationships than favorable deal terms in negotiation: The economic
relevance of relational outcomes (ERRO)'. Organizational Behavior and
Human Decision Processes*. 168:104108.
[doi:10.1016/j.obhdp.2021.104108](https://doi.org/10.1016/j.obhdp.2021.104108)

## Examples

``` r
# Repeated measure ANOVA
(rmod <- afex::aov_ez(
    id = "id",
    dv = "score",
    within = "item",
    data = HS22_P))
#> Registered S3 method overwritten by 'car':
#>   method           from
#>   na.action.merMod lme4
#> Anova Table (Type 3 tests)
#> 
#> Response: score
#>   Effect            df   MSE        F  ges p.value
#> 1   item 4.80, 4637.63 22.16 7.67 *** .002   <.001
#> ---
#> Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘+’ 0.1 ‘ ’ 1
#> 
#> Sphericity correction method: GG 
emm <- emmeans::emmeans(object = rmod, specs = "item")
emmeans::contrast(emm, list(service_vs_product = c(1, -1, 1, -1, 1, -1)/3))
#>  contrast           estimate    SE  df t.ratio p.value
#>  service_vs_product    0.658 0.141 967   4.658 <0.0001
#> 
```
