# Liu et al. (2026), Study 1

Authors consider online applications with different strengths (taken to
be the average of Z scores for platform-provided metrics, which are:
completion rate, number of job completed, work hours, and past
earnings). The choice of the participant is whether to rely on an AI or
human evaluation for the job application.

## Usage

``` r
LHC26_S1
```

## Format

A data frame with 207 rows and 6 variables:

- `choice`:

  \[factor\] response of participant, either artificial intelligence
  (`AI`) or `human`

- `strength`:

  \[double\] average Z score of scales capturing the job application
  strength

- `completionrate`:

  \[double\] job completion rate

- `jobcompleted`:

  \[double\] number of job completed

- `hours`:

  \[double\] total work hours

- `earnings`:

  \[double\] total earnings

## References

Liu, Q., Häubl, G. and N. Castelo (2026). Consumers with Weaker
Applications Are Less Receptive to Algorithmic Evaluation, *Journal of
Consumer Research*,
[doi:10.1093/jcr/ucag033](https://doi.org/10.1093/jcr/ucag033)
