## Put comments here that give an overall description of what your
## functions do

## returns a list of vector containing following 4 functions:
#set the value of the matrix
#get the value of the matrix
#set inverse of the matrix
#get inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## Return a matrix that is the inverse of 'x'
##
#returns the inverse of the matrix from the cached value if it is cached.
#If the result is not cached, solves the matrix inversion, caches the result
#and returns the result.

cacheSolve <- function(x, ...) {
	i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i 
}
