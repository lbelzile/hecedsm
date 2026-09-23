# Hatano et al. (2022), Experiment 4

The authors examined the enjoyment and engagement from waiting tasks,
doing nothing. The participants were asked to predict their levels of
enjoyment and engagement during and after the task. The authors fitted a
linear mixed model with an interaction between rating type and interim
rating time; the latter is centered by subtracting ten minutes (the mode
is 9).

## Usage

``` r
HOSM22_E4
```

## Format

A data frame with 80 rows and 4 variables:

- `id`:

  \[factor\] subject identifier

- `ratingtype`:

  \[factor\] experimental within-subject factor, either `prediction` or
  `experience`

- `imscore`:

  \[double\] response, intrinsic motivation score

- `irtime`:

  \[integer\] interim rating time minus 10 minutes

## Source

Open Science Foundation, <https://osf.io/a8bwm/>, unspecified license

## References

Hatano, A., Ogulmus, C., Shigemasu, H., & Murayama, K. (2022). *Thinking
About Thinking: People Underestimate How Enjoyable and Engaging Just
Waiting Is*. Journal of Experimental Psychology: General, 151(**12**),
3213–3229 [doi:10.1037/xge0001255](https://doi.org/10.1037/xge0001255)
