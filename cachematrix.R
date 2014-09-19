#####################################################
## Coursera : R Programming Course - Week # 3
## Programming Assignment # 2
## by Joseph Wright - 2014.09.18 
#####################################################
## this script contains two matrix-based functions 
## see each function below for specifics on each
#####################################################
## Example Use-Case Scenarios to Test Functionality 
## Use Case 1 : to retrieve 'cacheInverse' object
## x <- matrix(1:4,2,2)
## makeCacheMatrix(x)
## cacheSolve(x)
## ###################################################
## Use-Case 2 : to ignore 'cachedInverse' object
## and instead generate inverse of matrix passed
## x <- matrix(1:4,2,2)
## y <- matrix(4:1,2,2)
## makeCacheMatrix(x)
## cacheSolve(y)
######################################################
## this makeCacheMatrix() function accepts square 
## matrix objects (e.g matrix(1:4,2,2))
## will create a special matrix object, 
## generate the inverse matrix,
## and cache the inverse matrix in an object
## called 'cacheMatrix'
makeCacheMatrix <- function(x = matrix()) {
        cacheInverse <<- solve(x)  
        cacheMatrix <<- x
        return(cacheMatrix)
}
## the cacheSolve() function will take a matrix 
## object and determine if it is identical to the 
## last matrix object generated (via makeCacheMatrix);
## if true, it will retrieve the 'cacheInverse' object;
## otherwise calculate and return the inverse of the 
## matrix object passed and return it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if(identical(cacheMatrix,x)) {
                message(".. provided matrix object is identical to cached matrix.!")
                message(".. retrieving cached, inverse matrix...")
                return(cacheInverse)
        } else {
                message(".. provided matrix object is not identical to the cached matrix.!")
                message(".. calculating inverse matrix...")
                result <- solve(x)
                return(result)
        }
}