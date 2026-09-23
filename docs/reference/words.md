# Effects of verbal feedback

Fictional balanced 3 by 3 by 2 design with five replications from Keppel
and Wickens (Chapter 21). The scenario considered 'effects of verbal
feedback given during the acquisition of different types of learning
material on memory tested one week later. The response is the number of
words remembered from a list of vocabulary words in the lab.

## Usage

``` r
words
```

## Format

A data frame with 90 rows and 4 variables:

- `feedback`:

  \[factor\] feedback manipulation during the learning portion of the
  experiment, one of `none`, `positive` or `negative`

- `material`:

  \[factor\] type of words on the list, either `low freq/low emotion`,
  `high freq/low emotion` or `high freq/high emotion`

- `age`:

  \[factor\] age group, either fifth grader (`fifth grader`) or
  high-school seniors (`seniors`)

- `words`:

  \[integer\] number of words recalled one week after experiment

## Source

Keppel and Wickens (2004), Table 21.1, p.466

## References

Keppel, G., & Wickens, T. D. (2004). *Design and analysis: A
researcher’s handbook.*, 4th edition, Pearson Prentice Hall.
