# Poirier et al. (2024), Study 3

Data for Study 3, which assigned every participant to a pairwise
comparison. The variable `condition` indicates which brand was in the
no/medium/high, depending on the pairwise comparison. Participants had
to select one treadmill from two models (counterbalanced), with images
showing either condition with brand. The choice is recorded in `choice`.
In a contingency table of say `no` vs `high` for social presence, the
`high` are the sum of the diagonal entries. The authors performed
Pearson chi-square test for testing the presence of an interaction in
two by two tables.

## Usage

``` r
PCSCFL24_S3
```

## Format

A data frame with 302 rows and 3 variables:

- `subset`:

  \[factor\] experimental comparison

- `condition`:

  \[factor\] social presence dummy index: e.g., in the `no vs high`
  subset, brand A is high and B is no if `condition=1`, and brand A is
  no, B is high when `condition=0`

- `choice`:

  \[integer\] choice between two products, either brand `A` or `B`

## Source

Sara-Maude Poirier, personal communication, distributed under CC
BY-NC-SA 4.0

## Note

The authors seemingly compared the interaction in a two-way contingency
table using Pearson chi-square statistic.

## References

Poirier, S.-M., Cosby, S., Sénécal, S., Coursaris, C. K., Fredette, M.
et Léger, P.-M. (2024). *The impact of social presence cues in social
media product photos on consumers’ purchase intentions*. Journal of
Business Research, 185, 114932.
[doi:10.1016/j.jbusres.2024.114932](https://doi.org/10.1016/j.jbusres.2024.114932)
.

## Examples

``` r
data_novshigh <- subset(PCSCFL24_S3, subset == "no vs high", select = c(choice, condition))
(tab_novshigh <- table(data_novshigh))
#>       condition
#> choice  0  1
#>      A 27 19
#>      B 23 32
# Order is counterbalanced, so roughly the same number with each condition
colSums(tab_novshigh)
#>  0  1 
#> 50 51 
# Pearson chi-square test
chisq.test(tab_novshigh, correct = FALSE)
#> 
#>  Pearson's Chi-squared test
#> 
#> data:  tab_novshigh
#> X-squared = 2.8544, df = 1, p-value = 0.09112
#> 
```
