# Correct example
data <- mtcars %>%
  reorder_columns(.,c("mpg", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb", "cyl")) %>%
  rename_columns(letters[1:11]) %>%
  rename_rows(paste("row",1:32)) %>%
  reset_rownames() %>%
  reorder_columns(c(5,1,2,3,6,4,7,8,9,10,11)) %>%
  reorder_rows(c(11,2:10,12:32,1))

# Throw a column dimensional error
data <- mtcars %>%
  rename_columns(letters[1:10])

# Throw a row dimensional error
data <- mtcars %>%
  rename_rows(paste("row",1:31))

# Throw a column reordering error
data <- mtcars %>%
  reorder_columns(c(1,5,11))

# Throw a row reordering error
data <- mtcars %>%
  reorder_rows(c(1,5,11))
