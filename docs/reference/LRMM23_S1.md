# Liu et al. (2023) Study 1

Liu et al. study social interactions and the impact of surprise on
people reaching out if this contact is unexpected. Experiment 1 focuses
on questionnaires where the experimental condition is the perceived
appreciation of reaching out to someone (vs being reached to). The study
used a questionnaire administered to 200 American adults recruited on
the Prolific Academic platform. The response index consists of the
average of four questions measured on a Likert scale ranging from 1 (not
at all) to 7 (to a great extent): higher values thus indicate higher
appreciation.

## Usage

``` r
LRMM23_S1
```

## Format

A data frame with 200 rows and 5 variables:

- `appreciation`:

  \[double\] response variable, average Likert scale for appreciation

- `role`:

  \[factor\] experimental factor, either `initiator` or `responder`

- `form`:

  \[factor\] form of communication, one of `email`, `text`, `phone` or
  `other`

- `gender`:

  \[factor\] gender, one of `male`, `female` or `other`

- `age`:

  \[double\] age of participant

## Source

Research Box 289, <https://researchbox.org/289>, distributed under a CC
BY 4.0 license

## References

Liu, P. J., Rim, S., Min, L., & Min, K. E. (2023). *The surprise of
reaching out: Appreciated more than we think.* Journal of Personality
and Social Psychology, 124(4), 754–771.
[doi:10.1037/pspi0000402](https://doi.org/10.1037/pspi0000402)
