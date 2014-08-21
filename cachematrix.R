## Functions to cache the inverse of an invertible matrix

## function that returns a list that allows to cache the inverse of a matrix
## the items of the list are functions to set and get the matrix,
## and to set and get the inverse of the matrix
## Key concept is the use of the operator <<-
## Using <<- allows the functions in the list to access variables that are
## defined in the next higher environment, i.e. makeCacheMatrix itself

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(manual_inverse) inverse <<- manual_inverse
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function calculates the inverse of a matrix contained 
## in the list defined by makeCacheMatrix
## If the inverse has already been calculated, this function
## will return the inverse that is contained in the environment of makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$setinverse(inverse)
  inverse
}
