# Liu et al. (2023), Study 3

Paired data from dyads: participants were asked to "name a fellow
college student in their social circle with whom they typically have
pleasant encounters but have not interacted (either virtually or
in-person)". The experimenter measured the appreciation score via a
Likert scale with not at all (`1`), slightly (`2`), moderately (`3`),
very `4` and extremely (`5`). The expectation of the authors was that
initiators sending the gift/message would underestimate how much this
attention would be valued by respondant

## Usage

``` r
LRMM23_S3
```

## Format

A data frame with 67 rows and 6 variables:

- `apprec_resp`:

  \[integer\] appreciation of respondant

- `apprec_init`:

  \[integer\] appreciation of initiator

- `age_resp`:

  \[double\] age of respondant

- `gender_resp`:

  \[factor\] gender of respondant, one of `male`, `female` or `other`

- `age_init`:

  \[double\] age of initiator

- `gender_init`:

  \[factor\] gender of initiator, one of `male`, `female` or `other`

## Source

Research Box 289, <https://researchbox.org/289>, licensed under CC BY
4.0

## References

Liu, P. J., Rim, S., Min, L., & Min, K. E. (2023). *The surprise of
reaching out: Appreciated more than we think.* Journal of Personality
and Social Psychology, 124(4), 754–771.
[doi:10.1037/pspi0000402](https://doi.org/10.1037/pspi0000402)
