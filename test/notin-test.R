# Create some sample vectors
a <- c(1,2,3,100)
b <- c(1,2,3,4,5)

# Test the `%notin%` result
a %notin% b

# Test its subsetting ability
a[a %notin% b]
