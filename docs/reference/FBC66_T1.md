# Flavell, Beach and Chinsky (1966), Table 1

Three by three contingency table for the data presented in Table 1 of
Flavell, Beach and Chinsky (2021), in long format. The authors recruited
20 students per grade.

## Usage

``` r
FBC66_T1
```

## Format

A data frame with 9 rows and 3 variables:

- `grade`:

  \[factor\] grade of student, one of kindergarden (`K`), second (`2`)
  or fifth (`5`) grade

- `frequency`:

  \[factor\] category indicating how often students verbalized during
  task, one of `0`, `1-2` or `3+`

- `count`:

  \[integer\] count of the number of student

## References

Flavell, J. H., Beach, D. R., & Chinsky, J. M. (1966). Spontaneous
verbal rehearsal in a memory task as a function of age. *Child
Development*, 37, 283-299.
[doi:10.2307/1126804](https://doi.org/10.2307/1126804)

## Examples

``` r
chisq.test(xtabs(count ~ grade + frequency, data = FBC66_T1))
#> Warning: Chi-squared approximation may be incorrect
#> 
#>  Pearson's Chi-squared test
#> 
#> data:  xtabs(count ~ grade + frequency, data = FBC66_T1)
#> X-squared = 28.358, df = 4, p-value = 1.055e-05
#> 
```
