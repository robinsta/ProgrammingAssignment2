# Thomas Robinson
# Programming Assignment #2
# 08/23/15

# Two functions that (1) create a matrix whose inverse can be cached
# and (2) are able to solve it and cache it.

# This function can set a matrix, get it, find the inverse, and get
# the inverse from cache

makeCacheMatrix <- function(m = matrix()) {
    m.inv <- NULL
    set <- function(y) {
        m <<- y
        m.inv <<- NULL
    }
    get <- function() m
    setinv <- function(inverse) m.inv <<- inverse
    getinv <- function() m.inv
    list(set = set, get = get, 
         setinv = setinv,
         getinv = getinv)
}

# Calculates the inverse of matrix in the above function, though
# it first checks to see if the inverse has been calculated and will
# return the cached version if it has

cacheSolve <- function(m, ...) {
        m.inv <- m$getinv()
        if(!isnull(m.inv)) {
            message("Getting cached data...")
            return(m.inv)
        }
        data <- m$get()
        m.inv <- solve(data, ...)
        m$setinv(m.inv)
        m.inv
}