## Put comments here that give an overall description of what your
## functions do

## The following fcuntions cache the inverse of a matrix assuming 
## that the matrix supplied is always invertible.
## This function creates a special "matrix" object that can cache its inverse.

## Write a short comment describing this function

## The following fcuntions cache the inverse of a matrix assuming 
## that the matrix supplied is always invertible.
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
invers <- NULL
set <- function(y) {
    x <<- y
    invers <<- NULL
}
   get <- function() x
   setinverse <- function(inverse) invers <<- inverse
   getinverse <- function() invers
   list(set = set, get = get, setinverse = setinverse,
        getinverse = getinverse)
}

## The following function gives the inverse of invers vector
## created with the above function. If so, it `get`s the inverse from the
## cache and skips the computation. Otherwise, it calculates the inverse of
## the data and sets the value of the inverse in the cache via the `setinverse`
## function.



cacheSolve <- function(x, ...) {
      invers <- x$getinverse()
      if(!is.null(invers)) {
        message("getting cached data")
        return(invers)
      }
      met <- x$get()
      invers <- inverse(met, ...)
      x$setinverse(invers)
      invers
}
