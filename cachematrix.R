## Put comments here that give an overall description of what your
## functions do
##following the example given I will try to invert a matrix.
## Write a short comment describing this function
##Here I follow the steps given:
##set the value of the matrix
##get the value of the matrix
##set the value of the inverse
##get the value of the inverse
makeCacheMatrix <- function(mat = matrix()) {
  ##set the value of the matrix
  h <- NULL
  set <- function(y)
  {
    mat <<- y
    h <<- NULL
  }
  ##get the value of the matrix
  get <- function() mat
  ##set the value of the inverse
  setinverse <- function(inverse) h <<- inverse
  ##get the value of the inverse
  getinverse <- function() h
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
##It calculates the inverse of a matrix
##First checks to see if the inverse has been calculated
##In case of a positive answer gets the inverse from the cache
##In case of a negative answer it calculates the inverse

cacheSolve <- function(x, ...) {
        
  h <- x$getinverse()
  if (!is.null(h))
  {
    message("getting cached data")
    return(h)
  }
  data <- x$get()
  h <- inverse(data, ...)
  x$setinverse(h)
  h
}
