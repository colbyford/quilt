# Correct example
data <- mtcars %>%
  rename_columns(letters[1:11]) %>%
  rename_rows(paste("row",1:32))

# Throw a column dimensional error
data <- mtcars %>%
  rename_columns(letters[1:10])

# Throw a row dimensional error
data <- mtcars %>%
  rename_rows(paste("row",1:31))
