# Popcorn experiment

Experiment conducted by Jianjian Gong, Chongqing Yan, and Lihua Yang
circa 1992. The experiment tried to determine, among three brands of
popcorn, which lead to the highest proportion of popped kernels. Power
study showed that four replications was needed, but ressources allowed
only two replications. This is a completely randomized 3 by 2 by 3
balanced design with 2 replications.

## Usage

``` r
popcorn
```

## Format

A data frame with 36 rows and 4 variables:

- `brand`:

  \[factor\] brand of the popcorn 3.5 ounce package, one of two national
  brands and one local brand

- `power`:

  \[factor\] power rating of the microwave, either `500W` or `600W`
  watts

- `time`:

  \[factor\] cooking time, either 4, 4.5 or 5 minutes

- `percentage`:

  \[double\] percentage of popped kernels out of the bag

## Source

Section 7.4 of Dean, Voss and Draguljić (2017).

## References

Dean, A., Voss, D., & Draguljić, D. (2017). Design and analysis of
experiments. Springer.
