## Put comments here that give an overall description of what your
## functions do

## set matrix
## get matrix
## set invert the matrix by using the solve function
## get the inversion of a matrix

makeCacheMatrix <- function(x = matrix()) {
    invert <- NULL
    set <- function(y) {
        x <<- y
        invert <<- NULL
    }
    get <- function() x
    setinvert <- function(solve) invert<<-solve
    getinvert <- function() invert
    list(set = set, get = get,
         setinvert = setinvert,
         getinvert = getinvert)
    
}


## write a cache fucntion to calcualte matrix inversion. If the inversion of the matrix has already been calculated,
## return the cached inversion, otherwise calculate invert the matrix assuming the matrix is invertible. 

cacheSolve <- function(x, ...) {
    invert<-x$getinvert
    if(!is.null(invert)){
        message("get cached data")
        return(invert)
    }
    data<-x$get
    invert<-solve(data,...)
    invert
}
