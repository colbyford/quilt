# Test returns function on multiple objects
myFunc <- function(value){
  a1 <- value + 1
  a2 <- value + 2
  a3 <- value + 3

  returns(c(a1,a2,a3), names = c("a1","a2","a3"))
}

myFunc(2)
