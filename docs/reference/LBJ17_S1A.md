# Lages, Boyle and Jenkins (2017) Study 1A

Data for a study on visual acuity of participants. The data represent
the number of words correctly detected at different font size; interest
is in effect of illusory contraction on detection. The participants were
dichotomized in two groups based on their visual acuity based on median
split.

## Usage

``` r
LBJ17_S1A
```

## Format

A data frame with 1760 rows and 6 variables:

- `nerror`:

  \[double\] number of incorrectly identified letters out of 4

- `adaptation`:

  \[factor\] either preadaptation phase (`preadaptation`) or adaptation
  to contracting motion (`contracting`)

- `fontsize`:

  \[factor\] font size, in logMAR, one of `-0.3`, `-0.2`, `-0.1` and `0`

- `position`:

  \[factor\] position of the letter from left (`1`) to right (`5`)

- `id`:

  \[factor\] participant identifier

- `acuity`:

  \[factor\] acuity group, either `normal` or `high`

## Source

Open Science Foundation, <https://osf.io/nav9h/>, unspecified license

## References

Lages, M., Boyle, S. C., & Jenkins, R. (2017). *Illusory Increases in
Font Size Improve Letter Recognition*. Psychological Science, 28(**8**),
1180–1188.
[doi:10.1177/0956797617705391](https://doi.org/10.1177/0956797617705391)

## Examples

``` r
if (FALSE) { # \dontrun{
# Code to reproduce Figure 2a
library(dplyr)
library(ggplot2)
LBJ17_S1A |>
group_by(acuity, fontsize, adaptation, id) |>
 summarize(ncorrect = 20 - sum(nerror))|>
 group_by(acuity, fontsize, adaptation) |>
 summarize(mean = mean(ncorrect))|>
 ggplot(mapping = aes(y = mean,
                      x = as.numeric(fontsize),
                      color = adaptation,
                      shape = acuity)) +
 geom_point() +
 geom_line() +
 labs(x = "Letter Size (logMAR)",
      y = "Number of Letters (Correct)")
} # }
```
