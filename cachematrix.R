## The ovearll goal of makeCacheMatrix function is to cash inverse of a square
## matrix so that it can be looked up in the cache rather than repeatedly 
## computed.

## This functio creates a special matrix object that can store (cashe) matrix
## and it's inverse.

      makeCacheMatrix <- function(x = matrix())  {
                  m <- NULL
                  set <- function(y) {
                          x <<- y
                          m <<- NULL
  }
                  
                  get <- function() x
          setm_inverse<- function(m_inverse) m <<- m_inverse
          getm_inverse <- function() m
          list(set = set, get = get,
          setm_inverse = setm_inverse,
          getm_inverse = getm_inverse)
  
}

## This fuction calculates inverse of the special matrix object created with the
## makeCasheMatrix fuction. However, it first checks if inverse is already 
## calculated and if so, returns cashed data (with the message). If not, 
## it calculates the new inverse.

      cacheSolve <- function(x, ...) {
          m <= x$getm_inverse()
          if(!is.null(m_inverse)) {
          message("getting cached data")
          return(m)
    }
    
          mat <- x$get()
          invrs <- solve(mat, ...)
          x$setinverse(invrs)
          invrs
  }
