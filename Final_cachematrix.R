## With this function, I will get the inverse of the square invertible matrix 'x'


makeCacheMatrix <- function(x = matrix()) {
        inv=NULL
        set <- function(imx) {
        x <<- imx
        inv <<- NULL
}
get <- function () x
setinv <- function (inverse) inv <<- inverse
getinv <- function () inv
list (set=set, get=get, setinv=setinv, getinv=getinv)
}

## This second function, will return the inverse of the original matrix x,
## the input of the first matrix

cacheSolve <- function(x, ...) {
       inv=x$getinv ()
       if(!is.null(inv)){
                message ("getting cache data")
                return(inv)
       }
       mat.data=x$get()
       inv <- solve (mat.data,...)
       x$setinv(inv)
       return(inv)
}
