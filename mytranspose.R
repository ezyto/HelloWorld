assertEquals <- function(x2, y){
  
  same_cnt <- 0 
  data_cnt <- dim(x2)[1] * dim(x2)[2]
  
  if( data_cnt != 0 ){
    for(i in 1:nrow(x2)) {
      for(j in 1:ncol(x2)) {
        if( is.na(x2[i,j]) == 1){
          if( is.na(x2[i,j]) == is.na(y[j,i]) ){
            same_cnt <- same_cnt + 1
          }
        }
        
        else if( is.null(x2[i,j]) == 1){
          if( is.null(x2[i,j]) == is.null(y[j,i]) ){
            same_cnt <- same_cnt + 1
          }
        }
        
        else if (y[j,i] == x2[i,j]){
          same_cnt <- same_cnt + 1
        }
      }
    } 
  }
  
  if(is.null(data_cnt)) {
    data_cnt <- 0
  }
  
  if(data_cnt == same_cnt){
    print("Transpose Good!")
  }
}

mytranspose <- function(x) {
  if( is.null(x) == 1){
    print("Transpose Good!")
    return(x) 
  }
  
  if ( is.vector(x) == 1){
    x2 <- as.matrix(x)
  }
  
  if ( is.data.frame(x) == 1){
    x2 <- as.matrix(x)
  }
  
  if ( is.matrix(x) == 1){
    x2 <- x
  }
  
  if( dim(x2)[1] * dim(x2)[2] != 0 ){
    y <- matrix(1, nrow=ncol(x2), ncol = nrow(x2))
    for(i in 1:nrow(x2)) {
      for(j in 1:ncol(x2)) {
        y[j,i] <- x2[i,j]
      }
    } 
  }
  
  else {
    y <- x2
  }
  
  
  assertEquals(x2, y)
  
  if ( is.vector(x) == 1){
    y <- as.vector(y)
  }
  
  if ( is.data.frame(x) == 1){
    y <- as.data.frame(y)
  }
  
  return(y)
}