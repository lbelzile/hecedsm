# Liu et al. (2026), Study 3

Participants performed in a online game where they had to find fruits
given a set of three boxes, and would get a score for correctly
detecting the box containing the fruit. Unknown to them, the game was
rigged and they were given, along with their final score, a measure of
how other people performed, to inform them whether they performed better
or worst than other participants. Half of the participants were supposed
to receive a bonus based on strong performance, as judged by algorithmic
and human judges: they had t choose which among the two. The mediator is
a measure of relative preference for their choice of judge.

## Usage

``` r
LHC26_S3
```

## Format

A data frame with 996 rows and 5 variables:

- `choice`:

  \[factor\] first choice for the judge, either `ai` or `human`

- `mediator`:

  \[double\] strength of preference (from 10 to zero) for the given
  choice

- `strength`:

  \[factor\] strength of the applicant, as given by the score relative
  to the reported average, either `high` or `low`

- `gender`:

  \[factor\] gender of participant, either `male` or `female`

- `age`:

  \[integer\] age of participant

## References

Liu, Q., Häubl, G. and N. Castelo (2026). Consumers with Weaker
Applications Are Less Receptive to Algorithmic Evaluation, *Journal of
Consumer Research*,
[doi:10.1093/jcr/ucag033](https://doi.org/10.1093/jcr/ucag033)
