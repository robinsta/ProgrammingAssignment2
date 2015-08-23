# Thomas Robinson
# Programming Assignment #2
# 08/23/15

# Two functions that (1) create a matrix whose inverse can be cached
# and (2) are able to solve it and cache it.

# This function can set a matrix, get it, find the inverse, and get
# the inverse from cache
makeCacheMatrix <- function(x = matrix()) {
    m.inv <- NULL
    set <- function(y) {
        m <<- y
        m.inv <<- NULL
    }
    get <- function() m
    setinv <- function() {
        m.inv <<- solve(m)
    }
    getinv <- function() m
    list(set = set, get = get, 
         setinv = setinv,
         getinv = getinv)
}


# Calculates the inverse of matrix in the above function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
