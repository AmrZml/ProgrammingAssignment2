## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## this function store the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function (y){
    x <<- y
    inv <<- NULL
  }
  get <- function () x
  
  setinv <- function (v) inv <<- v
  
  getinv <- function () inv
  
  list (set = set , get = get ,
        setinv = setinv, 
        getinv = getinv)
  
  
}


## Write a short comment describing this function
#combute the inverse of matrix

cacheSolve <- function(x, ...) {
  v <- x$getinv()
  if (!is.null(v)){
    message("getting cached data")
    return (v);
  }
  
  mat <- x$get()
  v <-solve (mat,...)
  x$setinv(v)
  return (v)
}
