library(tidyverse)

mtcars

dplyr::select(mtcars, mpg, hp)

select(mtcars, mpg, hp)

mtcars |>
  select(mpg, hp)


my_select1 <- function(dat, col1, col2) {
  return(
    mtcars |>
      select(mpg, hp)
  )
}
my_select1(mtcars, asdf, asdf1)

my_select2 <- function(dat, col1, col2) {
  return(
    mtcars |>
      select(col1, col2)
  )
}
my_select2(mtcars, mpg, hp)

mtcars[, c("mpg", "hp")]

my_select3 <- function(dat, col1, col2) {
  return(
    dat[, c(col1, col2)]
  )
}
my_select3(mtcars, "mpg", "hp")

my_select4 <- function(dat, ...) {
  return(
    select(dat, ...)
  )
}
my_select4(mtcars, mpg, hp)

my_select4 <- function(dat, col1, col2) {
  return(
    select(dat, {{col1}}, {{col2}})
  )
}
my_select4(mtcars, mpg, hp)
