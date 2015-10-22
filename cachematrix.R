#cachematrix has 2 functions that are used to create a special object 
#that store a Matrix that can cache's its inverse.
# 

## makeCacheMatrix >> creates a special "Matrix", which is a list contain 
## functions to
# set: set the value of the Matrix
# get: get the value of the Matrix
# setinverse: the value of the inverse of the Matrix
# getinverse: the value of the inverse of the Matrix

makeCacheMatrix <- function(x = matrix()) {
        ## declare i store inverse matrix, default velue is NULL
        i <- NULL
        set <- function (y){
                x <<- y
                i <<- NULL
        }
        get <- function () x
        setinverse <- function (inverse) i <<- inverse
        getinverse <- function () i
        list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
        
}


## cacheSolve >> calculate inverse of x,which is as object of makeCacheMatrix, 
#and cache it. It will get the inverse form cache and skip computation if it
#already been calculated once before.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        
        ##if inverse of x is not NULL then return chache inverse of x 
        if(!is.null(i)){
                message ("getting cached data")
                return(i)
        }
        ##if inverse of x is NULL then calculate inverse of x 
        data <- x$get()
        i <- solve(data,...)
        ##save chache inverse of x
        x$setinverse(i)
        i
        
}
