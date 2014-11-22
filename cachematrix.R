##  these function calculate the inverse of matrix
# and cahce the result 



## this function  create object for Caching the matix and its inverse
## it is store the matrix and its inverse
## and contain set and get function for set and get the matrix
## also, contain setinv and getinv function for set or get the inverse of matix
# 

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


# this function calculte the inverse of matrix for chache matrix create by makeCacheMatrix function
# if the we calulte inverse of matrix before it is return the cache inverse for cache matrix object
# if not calculte the inverse and store it in cache matrix object and retrun the inverse


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
