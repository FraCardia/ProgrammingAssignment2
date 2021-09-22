## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      ## x is invertible matrix

        inv=NULL
        set=function(y){
        x <<- y
        inv <<- NULL       }
      get= function()x
      setinv=function(inverse)
     inv <<- inverse
     getinv= function() inv
    list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv=x$getinv()
    if (!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    # in the other situation, we calculate the inverse with
    mat.data=x$get()
    inv=solve(mat.data,...)
    # to set the value of inverse in the cache
    x$setinv()
   return(inv)
}
