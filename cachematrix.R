## Set the value of the matrix
## Get the value of the matrix
## Set the value of the inverse of the matrix
## Get the vlaue of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        I <- NULL
        set <- function(y) {
                x <<- y
                I <<- NULL
        }
        get <- function() x
        setInverse <- function(solve) I <<- solve
        getInverse <- function() I
       
}

## Check if the inverse of the matrix has already been calculated.
##If so, get inverse from Cache and return this value.
##If not, calculate in the inverse of the matrix and set the value of the inverse in the cache (setInverse function)

cacheSolve <- function(x, ...) {
        I <- x$getInverse()
        if(!is.null(I)) {
                message("getting cached data")
                return(I)
        }
        data <- x$get()
        I <- solve(data, ...)
        x$setInverse(I)
        I
}