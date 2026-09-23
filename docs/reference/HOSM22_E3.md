# Hatano et al. (2022), Experiment 3

The data consist in a two by two mixed analysis of variance. The authors
studied engagement and enjoyment from waiting tasks, and "potential
effects of time interval on the underestimation of task motivation by
manipulating the time for the waiting task". The waiting time was
randomly assigned to either short (3 minutes) or long (20 minutes).

## Usage

``` r
HOSM22_E3
```

## Format

A data frame with 126 rows and 4 variables:

- `id`:

  \[factor\] subject identifier

- `waiting`:

  \[factor\] experimental condition for waiting time, either `short` or
  `long`

- `ratingtype`:

  \[factor\] experimental within-subject factor, either `prediction` or
  `experience`

- `imscore`:

  \[double\] response, intrinsic motivation score

## Source

Open Science Foundation, <https://osf.io/a8bwm/>, unspecified license

## References

Hatano, A., Ogulmus, C., Shigemasu, H., & Murayama, K. (2022). *Thinking
About Thinking: People Underestimate How Enjoyable and Engaging Just
Waiting Is*. Journal of Experimental Psychology: General, 151(**12**),
3213–3229 [doi:10.1037/xge0001255](https://doi.org/10.1037/xge0001255)
