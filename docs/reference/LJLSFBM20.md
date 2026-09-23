# Labonte-LeMoyne et al. (2020)

Perceived performance for standing desk (relative to sitting desk)
measured from questionnaires and obtained from electroencephalograph
(EEG) data.

## Usage

``` r
LJLSFBM20
```

## Format

A data frame with 296 rows and 14 variables:

- `id`:

  \[factor\] participant identifier

- `order`:

  \[integer\] order in which tasks were performed, termed "fatigue" in
  the paper

- `position`:

  \[factor\] work position, either `standing` or `sitting`

- `phys_demand`:

  \[factor\] manipulation using either `mouse` or `touchpad`

- `task_diff`:

  \[factor\] task difficulty, either `easy` or `difficult`

- `ies`:

  \[double\] inverse efficiency score global stimulus

- `central_alpha`:

  \[double\] alpha for central region

- `parietal_alpha`:

  \[double\] alpha for parietal region

- `central_beta`:

  \[double\] beta for central region

- `parietal_beta`:

  \[double\] alpha for parietal region

- `bmi`:

  \[double\] body mass index

- `sex`:

  \[factor\] sex, either `man` or `woman`

- `attention`:

  \[double\] attention scale, average of 6 items

- `satisfaction`:

  \[double\] satisfaction score, a scale composed of 3 items

## Source

Shang Lin Chen, personal communication, distributed under CC BY-NC-SA
4.0

## References

Labonté-LeMoyne, E., Jutras, M.-A., Léger, P.-M., Sénécal, S., Fredette,
M., Begon, M., and Mathieu, M.-E. (2020). *Does Reducing Sedentarity
With Standing Desks Hinder Cognitive Performance? Human Factors*,
62(**4**), 603–612.
[doi:10.1177/0018720819879310](https://doi.org/10.1177/0018720819879310)
