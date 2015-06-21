# These functions invert a matrix and then cache it to reduce repetitive computing time.

# The makeCacheMatrix function stores functions enabling the user to:
# 1) store a matrix in cache
# 2) retrieve the matrix from cache
# 3) store the inverse of the matrix (determined by the "solve" function) in cache, and/or
# 4) retrieve the inverse of the matrix from cache.

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL  #nulls out the existing value of inverted matrix
  set <- function(y) {  #stores matrix
    x <<- y  #takes what is passed in as y and stores it as the new x
    i <<- NULL #nulls out the value of i (formerly the mean, now the inverted matrix)
  }
  get <- function() x  #returns stored matrix
  setinv <- function(inverted) i <<- inverted  #sets inverted matrix
  getinv <- function() i  #gets stored inverted matrix
  list(set = set, get = get, #stores all of the above functions
       setinv = setinv,
       getinv = getinv)
}

# The cacheSolve function caches the makeCacheMatrix function's results.

cacheSolve <- function(x, ...) {
  i <- x$getinv()
  if(!is.null(i)) { #if i inverted matrix is stored in cache, pull from cache and exit function
    message("getting cached data")
    return(i)
  }
  data <- x$get()  #if i inverted matrix is not stored in cache, calculate and return it
  i <- solve(data, ...)
  x$setinv(i)
  i
}
