# Road traffic accidents and speed limits experiment on motorway in Sweden

In this experiment, data were collected on the same days in two
consecutive years, and speed limits were sometimes enforced in either.
The purpose of the analysis is to analyse the effect of the traffic
limits.

## Usage

``` r
sweden
```

## Format

a data frame in long format of 184 observations on the following
variables

- `accidents`:

  integer; daily number of accident

- `day`:

  integer; day of the experiment, ranging from 1 to 92

- `year`:

  integer; year of the measurement, either 1961 or 1962

- `limit`:

  logical: was a speed limit enforced?

## References

Svensson, A. (1981) *On a goodness-of-fit test for multiplicative
Poisson models*. Annals of Statistics **9**, 697–704.
