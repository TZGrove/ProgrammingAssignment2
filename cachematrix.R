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
                  
                  get <- function()x
          setinverse<- function(inverse) m <<- inverse
          getinverse <- function()m
          list(set = set, get = get,
          setinverse = setinverse,
          getinverse = getinverse)
  
}

## This fuction calculates inverse of the special matrix object created with the
## makeCasheMatrix fuction. However, it first checks if inverse is already 
## calculated and if so, returns cashed data (with the message). If not, 
## it calculates the new inverse.

      cacheSolve <- function(x, ...) {
          m <- x$getinverse()
          if(!is.null(m)) {
          message("getting cached data")
          return(m)
    }
    
          data <- x$get()
          m <- solve(data, ...)
          x$setinverse(m)
          m
  }
