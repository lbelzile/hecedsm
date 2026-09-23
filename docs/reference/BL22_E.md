# Brucks and Levav (2022), eyetracker data

Brucks and Levav (2022), eyetracker data

## Usage

``` r
BL22_E
```

## Format

A data frame with 270 rows and 6 variables:

- `id`:

  \[factor\] identifier of dyad

- `writer`:

  \[logical\] whether the person was randomly assigned to be the writer

- `cond`:

  \[factor\] experimental condition, either `video` for
  videoconferencing or `f2f` for face-to-face

- `partner_time`:

  \[double\] time spent looking at partner (in seconds)

- `task_time`:

  \[integer\] time spent looking at the task computer (in seconds)

- `room_time`:

  \[double\] time spent looking at room (in seconds)

## Source

Research Box 282, <https://researchbox.org/282>, licensed under CC BY
4.0

## Details

The authors measured via an eyetracker the time spent gazing at the
room, at the other partner and at the task during their lab experiment

## References

Brucks, M.S. and J. Levav (2022). *Virtual communication curbs creative
idea generation*. Nature 605, 108–112.
[doi:10.1038/s41586-022-04643-y](https://doi.org/10.1038/s41586-022-04643-y)

## Examples

``` r
if (FALSE) { # \dontrun{
library(lme4)
mod <- lmer(task_time ~ cond + writer + (1|id),
            data = BL22_E)
summary(mod)
} # }
```
