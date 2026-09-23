# Jordan et al. (2022), Experiment 2

The authors studied how confidence in people skill to land a plane (with
no experience) and it was affected by watching a trivially related video
showing a landing.

## Usage

``` r
JZBJG22_E2
```

## Format

A data frame with 582 rows and 7 variables:

- `condition`:

  \[factor\] experimental condition, one of `video` or `no video`

- `order`:

  \[factor\] order of the questions, `dying first` or `pilot first`

- `conf_dying`:

  \[integer\] Likert scale from 0 (not at all confident to 100 (very
  confident) for the question: "How confident are you that you would be
  able to land the plane without dying"

- `conf_pilot`:

  \[integer\] Likert scale from 0 (not at all confident to 100 (very
  confident) for the question: "How confident are you that you would be
  able to successfully land the plane as well as a pilot could"

- `expertise`:

  \[integer\] Likert scale ranging from no expertise (`1`) to a great
  deal of expertise (`5`) answering the question "How much expertise do
  you think is involved in landing a plane"

- `ease_imagining`:

  \[integer\] Likert scale ranging from not at all difficult (`1`) to
  very difficult (`5`) for the answer to the question "How difficult was
  it for you to imagine attempting to land the plane."

- `gender`:

  \[factor\] gender of participant, one of `man`, `woman` or other
  (`gender diverse`)

## Source

Research Box 511, <https://researchbox.org/511>, licensed under CC BY
4.0

## References

Jordan, K., R. Zajac, D. Bernstein, C. Joshi and M. Garry (2022).
*Trivially informative semantic context inflates people's confidence
they can perform a highly complex skill*, Royal Society Open
Science,**9**, 211977,
[doi:10.1098/rsos.211977](https://doi.org/10.1098/rsos.211977)
