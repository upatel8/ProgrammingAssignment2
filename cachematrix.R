## R Code creasted to find and cache the inverse of a matrix

## Creating a function to cache the inverse of a matrix using the other sub functions to define a matrix

makeCacheMatrix <- function(x = matrix()) {

m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) m <<- mean
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)}

}

## The following function solves for the inversoe of the matrix x

cacheSolve <- function(x, ...) {
        ## Returns a matrix that is the inverse of 'x'
m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(matrix, ...)
  x$setmatrix(m)
  m

}
