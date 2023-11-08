## Put comments here that give an overall description of what your
## functions do

#Putting again here the two function to cache the mean of a vector as reference

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    j <- NULL
    
    #Setting the matrix
    set <- function(matrix){
        m <<- matrix
        j <<- NULL
    }
    
    #Getting and inversing the matrix
    get <- function(inverse) {
        m #Return the matrix m
    }
    setInverse <- function(inverse){
        j <<- inverse
    }
    getInverse <- function(){
        j #Return the matrix
    }
    
    #Return a list of methods
    list(set=set, get=get,
         setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    
    #Return the inverse if already set
    if (!is.null(m)){
        message("Retrieving cache data")
        return(m)
    }
    
    #Get the matrix from our obj and calculation of the Inv using matrix multiplication
    mat_ret <- x$get()
    inv_mat <- solve(mat_ret) %% mat_ret
    
    #Setting the inverse to Obj and returning the matrix
    x$setInverse(inv_mat)
    inv_mat
}
