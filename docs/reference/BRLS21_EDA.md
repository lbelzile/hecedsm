# Brodeur et al. (2021), Table 3

Electrodermal activity measured by a smartwatch as part of an experiment
on impact of smartwatches on distraction while driving. The experiment
was conducted at Tech3Lab, but the data are not utilized in the paper.

## Usage

``` r
BRLS21_EDA
```

## Format

A data frame with 10942 rows and 6 variables:

- `id`:

  \[factor\] participant identifier

- `reltime`:

  \[integer\] relative time of the task

- `task`:

  \[factor\] task, one of `baseline` or distraction, either a
  notification from the `cell`, from a phone call `voicecall` or via the
  smartwatch (`watch`)

- `occurence`:

  \[integer\] number of occurences

- `eda`:

  \[double\] electrodermal activity measure

- `hr`:

  \[double\] heart rate

## Source

Shang Lin Chen, personal communication, distributed under CC BY-NC-SA
4.0

## References

Brodeur, M., Ruer, P. Léger, P. and S. Sénécal (2021).Smartwatches are
more distracting than mobile phones while driving: Results from an
experimental study, *Accident Analysis & Prevention*, 149, 1-9.
