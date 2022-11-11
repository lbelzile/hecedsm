
set.seed(202211)
n <- 40
nrep <- 8L
mu <- 19
sigma_a <- 10
sigma_e <- 3
S <- TruncatedNormal::rtnorm(
  n = n,
  mu = mu,
  sd = sigma_a,
  lb = 10,
  ub = 55)
time <- round(2*TruncatedNormal::rtnorm(
  n = 1,
  mu = rep(S, each = nrep),
  sd = sigma_e,
  lb = 15,
  ub = 55))/2
workhours <- tibble::tibble(
  id = factor(rep(1:n, each = nrep)),
  week = factor(rep(1:8, length.out = nrep*n)),
  time = time)
usethis::use_data(workhours, overwrite = TRUE)
