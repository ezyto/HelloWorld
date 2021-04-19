getwd()
setwd("D:/대학원/21년1학기/창의적연구및논문/03. 이기천교수/assignment/R")
source("mytranspose.r")

myvar1 <-  matrix(1:10, nrow=5, ncol=2)
myvar2 <-  matrix(NA, nrow=0, ncol=0)
myvar3 <-  matrix(c(1,2), nrow=1, ncol=2)
myvar4 <-  matrix(c(1,2), nrow=2, ncol=1)

myvar5 <- c(1,2,NA,3)
myvar6 <- c(NA)
myvar7 <- c()

d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata8 <- data.frame(d,e,f)

mydata <- list(myvar1, myvar2, myvar3, myvar4, myvar5, myvar6, myvar7, mydata8)

for (i in 1:length(mydata)) {
  print(mydata[[i]])
  k <- mytranspose(mydata[[i]])
  print( k )
  
}