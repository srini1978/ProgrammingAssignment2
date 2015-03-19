## Put comments here that give an overall description of what your
## functions do
## Code by Srini to take the inverse of a matrix, cache it and return the cached value if present
## if cache is not present, then take the inverse and present it to user.
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inverseofMatrix <- NULL
   ## Function to set the inverse to a different environment. 
    set <- function(y) { 
	## set the cache value into x.
        x <<- y 
        inverseofMatrix <<- NULL 
    } 
   ## Return the cached value of matrix.
   get <- function() x 

   setinverse <- function(inverse) inverseofMatrix <<- inverse 
   getinverse <- function() inverseofMatrix 
   ## create the special matrix.
   list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) 

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inv <- x$getinverse() 
    if(!is.null(inv)) { 
        message("getting cached data.") 
        return(inv) 
    } 
    data <- x$get() 
    inv <- solve(data) 
    x$setinverse(inv) 
    inv 

}
